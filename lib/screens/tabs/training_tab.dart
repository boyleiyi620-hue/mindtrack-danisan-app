import 'package:flutter/material.dart';
import '../../data/data_store.dart';
import '../../models/finance.dart';
import '../../theme/app_theme.dart';

class TrainingTab extends StatefulWidget {
  const TrainingTab({super.key, required this.data});
  final DataStore data;

  @override
  State<TrainingTab> createState() => _TrainingTabState();
}

class _TrainingTabState extends State<TrainingTab> {
  @override
  Widget build(BuildContext context) {
    final trainings = widget.data.data.trainings;

    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        title: const Text('Eğitim ve Gelişim'),
        actions: [
          IconButton(
            onPressed: _addTraining,
            icon: const Icon(Icons.add_task),
            tooltip: 'Eğitim Ekle',
          ),
        ],
      ),
      body: trainings.isEmpty
          ? _empty()
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: trainings.length,
              itemBuilder: (context, i) => _trainingItem(trainings[i]),
            ),
    );
  }

  Widget _trainingItem(Training t) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(backgroundColor: AppColors.primarySoft, child: Icon(Icons.school_outlined, color: AppColors.primary)),
        title: Text(t.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${t.date} • ${t.type}\n${t.institution}'),
        isThreeLine: true,
        trailing: const Icon(Icons.verified, color: Colors.blue),
      ),
    );
  }

  Widget _empty() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.auto_stories_outlined, size: 64, color: AppColors.muted.withValues(alpha: .3)),
          const SizedBox(height: 16),
          const Text('Henüz eğitim veya sertifika kaydı bulunmuyor.', style: TextStyle(color: AppColors.muted)),
        ],
      ),
    );
  }

  void _addTraining() {
    final titleController = TextEditingController();
    final instController = TextEditingController();
    String type = 'Eğitim';

    showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setDialogState) => AlertDialog(
          title: const Text('Yeni Eğitim/Sertifika'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Eğitim/Sertifika Adı'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: instController,
                decoration: const InputDecoration(labelText: 'Kurum/Kuruluş'),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                value: type,
                items: ['Eğitim', 'Süpervizyon', 'Sertifika', 'Seminer'].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
                onChanged: (v) => setDialogState(() => type = v!),
                decoration: const InputDecoration(labelText: 'Tür'),
              ),
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: const Text('İptal')),
            FilledButton(
              onPressed: () {
                if (titleController.text.isEmpty) return;
                final t = Training(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  title: titleController.text,
                  institution: instController.text,
                  type: type,
                  date: DateTime.now().toString().split(' ').first,
                );
                setState(() => widget.data.data.trainings.add(t));
                widget.data.save();
                Navigator.pop(context);
              },
              child: const Text('Kaydet'),
            ),
          ],
        ),
      ),
    );
  }
}
