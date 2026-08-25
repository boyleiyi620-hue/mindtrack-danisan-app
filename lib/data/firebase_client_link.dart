import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/client.dart';

/// Psikolog kaydındaki yerel danışanı, danışan Firebase hesabıyla eşleştirir.
///
/// Yeni pairing kayıtlarında clientId kullanılır; eski kayıtlar için e-posta
/// geri dönüşü korunur. UID bulunursa yerel nesneye de yazılır.
Future<String> resolveClientFirebaseUid(Client client) async {
  final direct = client.clientUserId.trim();
  if (direct.isNotEmpty) return direct;

  final psychologistId = FirebaseAuth.instance.currentUser?.uid;
  if (psychologistId == null || psychologistId.isEmpty) return '';

  final collection = FirebaseFirestore.instance.collection('pairingCodes');
  try {
    final linked = await collection
        .where('psychologistId', isEqualTo: psychologistId)
        .get();

    String findPairedUid({String? clientId, String? email}) {
      for (final doc in linked.docs.reversed) {
        final data = doc.data();
        final matchesClientId =
            clientId != null &&
            clientId.isNotEmpty &&
            data['clientId']?.toString() == clientId;
        final matchesEmail =
            email != null &&
            email.isNotEmpty &&
            data['clientEmail']?.toString().trim().toLowerCase() ==
                email.toLowerCase();
        if (!matchesClientId && !matchesEmail) continue;
        final uid = data['clientUserId']?.toString().trim() ?? '';
        final status = data['status']?.toString() ?? '';
        if (uid.isNotEmpty && (status.isEmpty || status == 'paired')) {
          return uid;
        }
      }
      return '';
    }

    var resolved = findPairedUid(clientId: client.id);
    if (resolved.isEmpty && client.email.trim().isNotEmpty) {
      resolved = findPairedUid(email: client.email.trim());
    }
    if (resolved.isNotEmpty) client.clientUserId = resolved;
    return resolved;
  } catch (_) {
    return '';
  }
}

/// Psikolog hesabının, eşleşmiş danışan belgesine tanı kodu yazmasını sağlar.
Future<void> syncClientDiagnosisCodes(Client client) async {
  final uid = await resolveClientFirebaseUid(client);
  if (uid.isEmpty) return;
  await FirebaseFirestore.instance.collection('patients').doc(uid).set({
    'diagnosisCodes': List<String>.of(client.diagnosisCodes),
  }, SetOptions(merge: true));
}
