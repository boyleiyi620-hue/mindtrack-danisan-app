import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../data/data_store.dart';
import '../../models/appointment.dart';
import '../../models/client.dart';
import '../../theme/app_theme.dart';

/// Danışan uygulamasından gelen randevu talepleri.
/// Talep belgesindeki clientName alanı, danışanın psikolog ekranında
/// eşleşme tamamlanmadan da adının görünmesini sağlar.
class PendingAppointmentRequests extends StatelessWidget {
  const PendingAppointmentRequests({super.key, required this.data});

  final DataStore data;

  @override
  Widget build(BuildContext context) {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return const SizedBox.shrink();

    final stream = FirebaseFirestore.instance
        .collection('psychologists')
        .doc(uid)
        .collection('appointments')
        .where('status', isEqualTo: 'pending')
        .snapshots();

    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: stream,
      builder: (context, snapshot) {
        if (snapshot.hasError || !snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const SizedBox.shrink();
        }
        final requests = [...snapshot.data!.docs]
          ..sort((a, b) => _requestDate(a.data()).compareTo(_requestDate(b.data())));
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.warningSoft,
            borderRadius: BorderRadius.circular(AppSizes.radius),
            border: Border.all(color: AppColors.warning.withValues(alpha: .35)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const Icon(Icons.notifications_active_outlined,
                      color: AppColors.warning),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'Bekleyen Randevu Talepleri',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                        color: AppColors.text,
                      ),
                    ),
                  ),
                  _countChip(requests.length),
                ],
              ),
              const SizedBox(height: 10),
              for (final request in requests) _requestCard(context, request),
            ],
          ),
        );
      },
    );
  }

  Widget _countChip(int count) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.warning.withValues(alpha: .14),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        '$count',
        style: const TextStyle(
          color: AppColors.warning,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }

  Widget _requestCard(
      BuildContext context, DocumentSnapshot<Map<String, dynamic>> request) {
    final raw = request.data() ?? <String, dynamic>{};
    final date = _requestDate(raw);
    final name = _requestName(raw);
    final email = raw['clientEmail']?.toString() ?? '';
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primarySoft,
            child: Text(_initials(name),
                style: const TextStyle(
                    color: AppColors.primaryDark, fontWeight: FontWeight.w800)),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w800,
                        color: AppColors.text)),
                const SizedBox(height: 3),
                Text(
                  '${_dateTimeLabel(date)}${email.isEmpty ? '' : ' · $email'}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 11.5, color: AppColors.muted),
                ),
                const SizedBox(height: 9),
                Wrap(
                  spacing: 8,
                  runSpacing: 6,
                  children: [
                    FilledButton.icon(
                      onPressed: () => _approve(context, request),
                      icon: const Icon(Icons.check, size: 15),
                      label: const Text('Onayla'),
                      style: FilledButton.styleFrom(
                          backgroundColor: AppColors.success),
                    ),
                    OutlinedButton.icon(
                      onPressed: () => _reject(context, request),
                      icon: const Icon(Icons.close, size: 15),
                      label: const Text('Reddet'),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.danger),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _approve(
      BuildContext context, DocumentSnapshot<Map<String, dynamic>> request) async {
    final raw = request.data() ?? <String, dynamic>{};
    final name = _requestName(raw);
    final clientUid = raw['clientFirebaseUid']?.toString() ?? '';
    final email = raw['clientEmail']?.toString() ?? '';
    final date = _requestDate(raw);
    try {
      Client? client;
      for (final candidate in data.data.clients) {
        if (clientUid.isNotEmpty && candidate.clientUserId == clientUid) {
          client = candidate;
          break;
        }
      }
      if (client == null) {
        client = Client(
          id: data.newId(),
          clientUserId: clientUid,
          name: name,
          email: email,
        );
        data.data.clients.add(client);
      } else {
        client.name = name;
        if (email.isNotEmpty) client.email = email;
      }

      final appointment = Appointment(
        id: data.newId(),
        date: _isoDate(date),
        time: _time(date),
        clientId: client.id,
        type: 'therapy',
        status: 'planned',
        notes: 'request:${request.id}',
      );
      data.data.appointments.add(appointment);
      data.save();
      await request.reference.update({
        'status': 'approved',
        'linkedAppointmentId': appointment.id,
        'updatedAt': FieldValue.serverTimestamp(),
      });
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$name randevu talebi onaylandı.')),
        );
      }
    } catch (error) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Talep onaylanamadı: $error')),
        );
      }
    }
  }

  Future<void> _reject(
      BuildContext context, DocumentSnapshot<Map<String, dynamic>> request) async {
    try {
      await request.reference.update({
        'status': 'rejected',
        'updatedAt': FieldValue.serverTimestamp(),
      });
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Talep reddedildi.')),
        );
      }
    } catch (error) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Talep reddedilemedi: $error')),
        );
      }
    }
  }
}

String _requestName(Map<String, dynamic> data) {
  final direct = data['clientName']?.toString().trim() ?? '';
  if (direct.isNotEmpty) return direct;
  final first = data['clientFirstName']?.toString().trim() ?? '';
  final last = data['clientLastName']?.toString().trim() ?? '';
  final joined = [first, last].where((value) => value.isNotEmpty).join(' ');
  if (joined.isNotEmpty) return joined;
  final email = data['clientEmail']?.toString().trim() ?? '';
  return email.isEmpty ? 'Bilinmeyen Danışan' : email.split('@').first;
}

DateTime _requestDate(Map<String, dynamic> data) {
  final raw = data['date'];
  if (raw is Timestamp) return raw.toDate();
  if (raw is DateTime) return raw;
  if (raw is String) return DateTime.tryParse(raw) ?? DateTime(2100);
  if (raw is num) return DateTime.fromMillisecondsSinceEpoch(raw.toInt());
  return DateTime(2100);
}

String _dateTimeLabel(DateTime value) =>
    '${value.day.toString().padLeft(2, '0')}.${value.month.toString().padLeft(2, '0')}.${value.year} · ${_time(value)}';

String _isoDate(DateTime value) =>
    '${value.year.toString().padLeft(4, '0')}-${value.month.toString().padLeft(2, '0')}-${value.day.toString().padLeft(2, '0')}';

String _time(DateTime value) =>
    '${value.hour.toString().padLeft(2, '0')}:${value.minute.toString().padLeft(2, '0')}';

String _initials(String value) {
  final parts = value.split(RegExp(r'\s+')).where((part) => part.isNotEmpty).toList();
  if (parts.isEmpty) return '?';
  if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
  return '${parts.first.substring(0, 1)}${parts.last.substring(0, 1)}'.toUpperCase();
}
