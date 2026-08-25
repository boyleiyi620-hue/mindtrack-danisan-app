import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  } catch (e) {
    debugPrint('Firebase init error: $e');
  }
  runApp(const MindTrackClientApp());
}

class MindTrackClientApp extends StatelessWidget {
  const MindTrackClientApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MindTrack Danışan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, primary: Colors.teal),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const AuthGate(),
    );
  }
}

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) return const Scaffold(body: Center(child: CircularProgressIndicator()));
        if (!snapshot.hasData) return const LoginScreen();
        return const ClientShell();
      },
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _email = TextEditingController();
  final _pass = TextEditingController();
  bool _isReg = false;
  bool _loading = false;

  Future<void> _submit() async {
    if (_email.text.isEmpty || _pass.text.isEmpty) return;
    setState(() => _loading = true);
    try {
      if (_isReg) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text.trim(), password: _pass.text);
      } else {
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text.trim(), password: _pass.text);
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hata: $e')));
    }
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.favorite, size: 80, color: Colors.teal),
            const SizedBox(height: 16),
            const Text('MindTrack Danışan', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            TextField(controller: _email, decoration: const InputDecoration(labelText: 'E-posta', border: OutlineInputBorder())),
            const SizedBox(height: 16),
            TextField(controller: _pass, decoration: const InputDecoration(labelText: 'Şifre', border: OutlineInputBorder()), obscureText: true),
            const SizedBox(height: 24),
            if (_loading) const CircularProgressIndicator()
            else ElevatedButton(
              onPressed: _submit, 
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.teal, foregroundColor: Colors.white),
              child: Text(_isReg ? 'Kayıt Ol' : 'Giriş Yap')
            ),
            TextButton(onPressed: () => setState(() => _isReg = !_isReg), child: Text(_isReg ? 'Giriş Yap' : 'Kayıt Ol')),
          ],
        ),
      ),
    );
  }
}

class ClientShell extends StatefulWidget {
  const ClientShell({super.key});
  @override
  State<ClientShell> createState() => _ClientShellState();
}

class _ClientShellState extends State<ClientShell> {
  int _idx = 0;

  @override
  Widget build(BuildContext context) {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance.collection('patients').doc(uid).snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const Scaffold(body: Center(child: CircularProgressIndicator()));
        final data = snapshot.data?.data() as Map<String, dynamic>?;
        if (data?['consented'] != true) return ConsentScreen(onDone: () {});
        if (data?['psychologistId'] == null) return const PairingScreen();

        final pages = [const ClientOverview(), const ClientHomeworks(), const ClientProfile()];

        return Scaffold(
          body: pages[_idx],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _idx,
            onTap: (i) => setState(() => _idx = i),
            selectedItemColor: Colors.teal,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
              BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Formlar'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
            ],
          ),
        );
      },
    );
  }
}

class ConsentScreen extends StatefulWidget {
  final VoidCallback onDone;
  const ConsentScreen({required this.onDone, super.key});
  @override
  State<ConsentScreen> createState() => _ConsentScreenState();
}

class _ConsentScreenState extends State<ConsentScreen> {
  bool _agreed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Onam')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Expanded(child: SingleChildScrollView(child: Text('Psikolojik Danışmanlık Süreci Onam Formu...'))),
            CheckboxListTile(value: _agreed, onChanged: (v) => setState(() => _agreed = v!), title: const Text('Okudum, onaylıyorum')),
            ElevatedButton(
              onPressed: _agreed ? () async {
                final uid = FirebaseAuth.instance.currentUser?.uid;
                await FirebaseFirestore.instance.collection('patients').doc(uid).set({'consented': true}, SetOptions(merge: true));
              } : null, 
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.teal, foregroundColor: Colors.white),
              child: const Text('Devam Et')
            ),
          ],
        ),
      ),
    );
  }
}

class PairingScreen extends StatefulWidget {
  const PairingScreen({super.key});
  @override
  State<PairingScreen> createState() => _PairingScreenState();
}

class _PairingScreenState extends State<PairingScreen> {
  final _code = TextEditingController();
  bool _loading = false;

  Future<void> _pair() async {
    setState(() => _loading = true);
    try {
      final snap = await FirebaseFirestore.instance.collection('pairingCodes').doc(_code.text.trim()).get();
      if (!snap.exists) throw 'Geçersiz kod.';
      
      final psyId = snap.data()?['psychologistId'];
      final localId = snap.data()?['clientId'];
      final uid = FirebaseAuth.instance.currentUser?.uid;

      await FirebaseFirestore.instance.collection('patients').doc(uid).set({
        'psychologistId': psyId,
        'localClientId': localId,
      }, SetOptions(merge: true));
      
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Eşleşme Başarılı!')));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Hata: $e')));
    }
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eşleşme')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text('Psikoloğunuzun verdiği kodu girin:'),
            const SizedBox(height: 16),
            TextField(controller: _code, textAlign: TextAlign.center, style: const TextStyle(fontSize: 24, letterSpacing: 4)),
            const SizedBox(height: 24),
            if (_loading) const CircularProgressIndicator()
            else ElevatedButton(onPressed: _pair, child: const Text('Eşleşmeyi Tamamla')),
          ],
        ),
      ),
    );
  }
}

class ClientOverview extends StatelessWidget {
  const ClientOverview({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('MindTrack Danışan Uygulaması')));
  }
}

class ClientHomeworks extends StatelessWidget {
  const ClientHomeworks({super.key});
  @override
  Widget build(BuildContext context) {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    return Scaffold(
      appBar: AppBar(title: const Text('Formlar ve Ödevler')),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('patients').doc(uid).snapshots(),
        builder: (context, pSnap) {
          if (!pSnap.hasData) return const Center(child: CircularProgressIndicator());
          final psyId = pSnap.data?.get('psychologistId');
          if (psyId == null) return const Center(child: Text('Eşleşme yok.'));

          return StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('psychologists').doc(psyId).collection('tasks')
                .where('clientFirebaseUid', isEqualTo: uid).snapshots(),
            builder: (context, tSnap) {
              if (!tSnap.hasData) return const Center(child: CircularProgressIndicator());
              final docs = tSnap.data!.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (context, i) {
                  final d = docs[i].data() as Map<String, dynamic>;
                  return Card(
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(d['title'] ?? 'Form'),
                      subtitle: Text(d['done'] == true ? 'Tamamlandı' : 'Bekliyor'),
                      trailing: Icon(d['done'] == true ? Icons.check_circle : Icons.pending, color: d['done'] == true ? Colors.green : Colors.orange),
                      onTap: () => _openForm(context, docs[i].id, d, psyId),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  void _openForm(BuildContext context, String taskId, Map<String, dynamic> taskData, String psyId) {
    final draft = taskData['formDraft'] as Map<String, dynamic>?;
    if (draft == null) return;

    final questions = draft['questions'] as List? ?? [];
    final Map<String, dynamic> answers = {};

    showModalBottomSheet(context: context, isScrollControlled: true, builder: (c) => StatefulBuilder(
      builder: (context, setModalState) => DraggableScrollableSheet(
        expand: false,
        builder: (_, scroll) => ListView(
          controller: scroll,
          padding: const EdgeInsets.all(24),
          children: [
            Text(draft['title'] ?? 'Form', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            for (var q in questions)
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(q['text'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 12),
                    _QuestionWidget(
                      question: q, 
                      onChanged: (val) {
                        answers[q['id']] = val;
                      }
                    ),
                    const Divider(height: 40),
                  ],
                ),
              ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                // DOĞRUDAN TASK BELGESİNE YAZIYORUZ
                await FirebaseFirestore.instance.collection('psychologists').doc(psyId).collection('tasks').doc(taskId).update({
                  'done': true,
                  'response': 'Form tamamlandı.',
                  'structuredAnswers': answers, // Tüm cevapları buraya gömüyoruz
                  'respondedAt': DateTime.now().toIso8601String(),
                });

                Navigator.pop(c);
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Form Başarıyla Gönderildi.')));
              },
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50), backgroundColor: Colors.teal, foregroundColor: Colors.white),
              child: const Text('Formu Tamamla ve Gönder'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}

class _QuestionWidget extends StatefulWidget {
  final Map<String, dynamic> question;
  final ValueChanged<dynamic> onChanged;
  const _QuestionWidget({required this.question, required this.onChanged});
  @override
  State<_QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<_QuestionWidget> {
  dynamic _currentValue;

  @override
  Widget build(BuildContext context) {
    final type = widget.question['type'] ?? 'text';
    
    if (type == 'multiple_choice') {
      final options = widget.question['options'] as List? ?? [];
      return Column(
        children: options.map((opt) => RadioListTile(
          title: Text(opt.toString()),
          value: opt.toString(),
          groupValue: _currentValue,
          activeColor: Colors.teal,
          onChanged: (v) {
            setState(() => _currentValue = v);
            widget.onChanged(v);
          },
        )).toList(),
      );
    } else if (type == 'yes_no') {
      return Row(
        children: [
          Expanded(child: ChoiceChip(
            label: const Center(child: Text('Evet')),
            selected: _currentValue == 'Evet',
            onSelected: (s) {
              setState(() => _currentValue = 'Evet');
              widget.onChanged('Evet');
            },
          )),
          const SizedBox(width: 12),
          Expanded(child: ChoiceChip(
            label: const Center(child: Text('Hayır')),
            selected: _currentValue == 'Hayır',
            onSelected: (s) {
              setState(() => _currentValue = 'Hayır');
              widget.onChanged('Hayır');
            },
          )),
        ],
      );
    } else if (type == 'scale') {
      final max = (widget.question['scaleMax'] ?? 5).toDouble();
      return Column(
        children: [
          Slider(
            value: (_currentValue ?? 1).toDouble(),
            min: 1,
            max: max,
            divisions: (max - 1).toInt(),
            label: (_currentValue ?? 1).toString(),
            activeColor: Colors.teal,
            onChanged: (v) {
              setState(() => _currentValue = v.toInt());
              widget.onChanged(v.toInt());
            },
          ),
          Text('Seçilen Değer: ${_currentValue ?? 1}', style: const TextStyle(color: Colors.teal, fontWeight: FontWeight.bold)),
        ],
      );
    }
    
    return TextField(
      onChanged: (v) {
        _currentValue = v;
        widget.onChanged(v);
      },
      decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Yanıtınız...'),
    );
  }
}

class ClientProfile extends StatelessWidget {
  const ClientProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Profil')), body: Center(child: ElevatedButton(onPressed: () => FirebaseAuth.instance.signOut(), child: const Text('Çıkış Yap'))));
  }
}
