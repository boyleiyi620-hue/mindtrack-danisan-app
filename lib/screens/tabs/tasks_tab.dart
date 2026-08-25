import 'package:flutter/material.dart';

import '../../data/data_store.dart';
import '../../models/client.dart';
import '../../models/task.dart';
import '../../theme/app_theme.dart';
import '../../utils/formats.dart';

/// Görevler — açık/gecikmiş görev takibi, filtreleme, ekleme ve düzenleme.
class TasksTab extends StatefulWidget {
  const TasksTab({super.key, required this.data});

  final DataStore data;

  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
  String _filter = 'open'; // open | all | done

  List<Task> _sorted() {
    final list = widget.data.data.tasks.toList()
      ..sort((a, b) {
        if (a.done != b.done) return a.done ? 1 : -1;
        return (a.dueDate ?? '9999').compareTo(b.dueDate ?? '9999');
      });
    return list.where((t) {
      if (_filter == 'done') return t.done;
      if (_filter == 'open') return !t.done;
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.data.data;
    final open = d.tasks.where((t) => !t.done).length;
    final done = d.tasks.where((t) => t.done).length;
    final overdue = d.tasks
        .where((t) => !t.done && t.dueDate != null && t.dueDate!.compareTo(todayIso()) < 0)
        .length;
    final list = _sorted();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _header(open, done, overdue),
              const SizedBox(height: 16),
              _filterChips(),
              const SizedBox(height: 14),
              if (list.isEmpty)
                _emptyState()
              else
                _taskList(list),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(int open, int done, int overdue) {
    return LayoutBuilder(
      builder: (context, bc) {
        final wide = bc.maxWidth >= 720;
        final head = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Takip Görevleri',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: AppColors.text),
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  '$open açık görev',
                  style: const TextStyle(
                      fontSize: 13.5, color: AppColors.muted),
                ),
                if (overdue > 0)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.dangerSoft,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '$overdue gecikmiş',
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.danger),
                    ),
                  ),
                Text(
                  '$done tamamlandı',
                  style: const TextStyle(
                      fontSize: 13.5, color: AppColors.muted),
                ),
              ],
            ),
          ],
        );
        final btn = FilledButton.icon(
          onPressed: () => _openEditor(),
          icon: const Icon(Icons.add, size: 17),
          label: const Text('Yeni Görev', style: TextStyle()),
        );
        if (!wide) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              head,
              const SizedBox(height: 12),
              SizedBox(width: double.infinity, child: btn),
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Expanded(child: head), btn],
        );
      },
    );
  }

  Widget _filterChips() {
    final chips = <(String, String, IconData?)>[
      ('open', 'Açık', Icons.radio_button_unchecked),
      ('all', 'Tümü', null),
      ('done', 'Tamamlanan', Icons.check_circle_outline),
    ];
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final c in chips)
          InkWell(
            onTap: () => setState(() => _filter = c.$1),
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              decoration: BoxDecoration(
                color: _filter == c.$1 ? AppColors.primarySoft : AppColors.card,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: _filter == c.$1 ? AppColors.primary : AppColors.border2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (c.$3 != null) ...[
                    Icon(
                      c.$3,
                      size: 14,
                      color: _filter == c.$1 ? AppColors.primaryDark : AppColors.muted,
                    ),
                    const SizedBox(width: 5),
                  ],
                  Text(
                    c.$2,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: _filter == c.$1 ? AppColors.primaryDark : AppColors.text2,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _emptyState() {
    final isDone = _filter == 'done';
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          Icon(
            isDone ? Icons.check_circle_outline : Icons.checklist_rounded,
            size: 44,
            color: AppColors.muted,
          ),
          const SizedBox(height: 12),
          Text(
            isDone ? 'Tamamlanan görev yok' : 'Açık görev yok',
            style: const TextStyle(
                fontSize: 15.5,
                fontWeight: FontWeight.w700,
                color: AppColors.text),
          ),
          const SizedBox(height: 6),
          const Text(
            'Takip gerektiren işler için "Yeni Görev" butonunu kullanın.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 13, color: AppColors.muted),
          ),
        ],
      ),
    );
  }

  Widget _taskList(List<Task> list) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        children: [
          for (var i = 0; i < list.length; i++) ...[
            if (i > 0) const Divider(height: 1, indent: 58),
            _taskRow(list[i]),
          ],
        ],
      ),
    );
  }

  Widget _taskRow(Task t) {
    final d = widget.data.data;
    final c = t.clientId.isNotEmpty ? d.clientById(t.clientId) : null;
    final today = todayIso();
    final overdue = !t.done && t.dueDate != null && t.dueDate!.compareTo(today) < 0;
    final isToday = !t.done && t.dueDate == today;

    return InkWell(
      onTap: () => _openEditor(task: t),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Row(
          children: [
            InkWell(
              onTap: () => _toggle(t),
              customBorder: const CircleBorder(),
              child: Icon(
                t.done ? Icons.check_circle : Icons.radio_button_unchecked,
                size: 22,
                color: t.done ? AppColors.success : AppColors.muted,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.text,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.5,
                      fontWeight: FontWeight.w700,
                      color: t.done ? AppColors.muted : AppColors.text,
                      decoration: t.done ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      if (c != null)
                        Text(
                          '${c.name}${t.dueDate != null ? ' · ' : ''}',
                          style: const TextStyle(
                              fontSize: 12.5,
                              color: AppColors.text2),
                        ),
                      if (t.dueDate != null)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (overdue)
                              _badge('Gecikti', AppColors.danger, AppColors.dangerSoft)
                            else if (isToday)
                              _badge('Bugün', AppColors.warning, AppColors.warningSoft),
                            Text(
                              fmtDate(DateTime.parse(t.dueDate!)),
                              style: const TextStyle(
                                  fontSize: 12.5,
                                  color: AppColors.muted),
                            ),
                          ],
                        ),
                      if (t.priority == 'high' && !t.done)
                        _badge('Yüksek', AppColors.info, AppColors.infoSoft),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              tooltip: 'Düzenle',
              visualDensity: VisualDensity.compact,
              onPressed: () => _openEditor(task: t),
              icon: const Icon(Icons.edit_outlined, size: 17, color: AppColors.muted),
            ),
            IconButton(
              tooltip: 'Sil',
              visualDensity: VisualDensity.compact,
              onPressed: () => _confirmDelete(t),
              icon: const Icon(Icons.delete_outline, size: 17, color: AppColors.danger),
            ),
          ],
        ),
      ),
    );
  }

  Widget _badge(String label, Color fg, Color bg) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2.5),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: fg),
      ),
    );
  }

  void _toggle(Task t) {
    final messenger = ScaffoldMessenger.of(context);
    t.done = !t.done;
    widget.data.save();
    messenger.showSnackBar(SnackBar(
      content: Text(t.done ? 'Görev tamamlandı.' : 'Görev yeniden açıldı.',
          style: const TextStyle()),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    ));
  }

  Future<void> _confirmDelete(Task t) async {
    final messenger = ScaffoldMessenger.of(context);
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Görevi Sil', style: TextStyle()),
        content: Text(
          '"${t.text}" silinecek. Bu işlem geri alınamaz.',
          style: const TextStyle( height: 1.5),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Vazgeç', style: TextStyle()),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: AppColors.danger),
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Evet, Sil', style: TextStyle()),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    widget.data.data.tasks.removeWhere((x) => x.id == t.id);
    widget.data.save();
    messenger.showSnackBar(const SnackBar(
      content: Text('Görev silindi.', style: TextStyle()),
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
    ));
  }

  Future<void> _openEditor({Task? task}) async {
    final messenger = ScaffoldMessenger.of(context);
    final clients = widget.data.data.clients.toList()
      ..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    final result = await showDialog<Task>(
      context: context,
      builder: (ctx) => _TaskEditorDialog(
        data: widget.data,
        task: task,
        clients: clients,
        onSave: (t) {
          if (task == null) {
            widget.data.data.tasks.add(t);
          } else {
            final i = widget.data.data.tasks.indexWhere((x) => x.id == task.id);
            if (i >= 0) {
              widget.data.data.tasks[i] = t;
            }
          }
          widget.data.save();
        },
      ),
    );
    if (result != null && mounted) {
      messenger.showSnackBar(const SnackBar(
        content: Text('Görev kaydedildi.', style: TextStyle()),
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ));
    }
  }
}

/// Görev ekleme / düzenleme iletişim kutusu.
class _TaskEditorDialog extends StatefulWidget {
  const _TaskEditorDialog({
    required this.data,
    required this.task,
    required this.clients,
    required this.onSave,
  });

  final DataStore data;
  final Task? task;
  final List<Client> clients;
  final ValueChanged<Task> onSave;

  @override
  State<_TaskEditorDialog> createState() => _TaskEditorDialogState();
}

class _TaskEditorDialogState extends State<_TaskEditorDialog> {
  late final TextEditingController _title;
  String? _clientId;
  String? _dueDate;
  String _priority = 'medium';
  String? _error;

  @override
  void initState() {
    super.initState();
    final t = widget.task;
    _title = TextEditingController(text: t?.text ?? '');
    _clientId = (t?.clientId ?? '').isEmpty ? null : t!.clientId;
    _dueDate = t?.dueDate;
    _priority = t?.priority ?? 'medium';
  }

  @override
  void dispose() {
    _title.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final initial = _dueDate != null
        ? DateTime.tryParse(_dueDate!)
        : now;
    final picked = await showDatePicker(
      context: context,
      initialDate: initial ?? now,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 3),
    );
    if (picked == null || !mounted) return;
    setState(() => _dueDate = isoDate(picked));
  }

  void _save() {
    final title = _title.text.trim();
    if (title.isEmpty) {
      setState(() => _error = 'Görev başlığı gereklidir.');
      return;
    }
    final t = widget.task;
    widget.onSave(Task(
      id: t?.id ?? widget.data.newId(),
      text: title,
      clientId: _clientId ?? '',
      dueDate: _dueDate,
      priority: _priority,
      done: t?.done ?? false,
      createdAt: t?.createdAt,
    ));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final t = widget.task;
    return AlertDialog(
      title: Text(t == null ? 'Yeni Takip Görevi' : 'Görevi Düzenle',
          style: const TextStyle()),
      content: SingleChildScrollView(
        child: SizedBox(
          width: 460,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _title,
                autofocus: true,
                maxLines: 2,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: 'Görev Başlığı *',
                  hintText: 'Örn: Ayşe ile kontrol görüşmesi',
                  errorText: _error,
                ),
              ),
              const SizedBox(height: 14),
              DropdownButtonFormField<String>(
                initialValue: _clientId,
                isExpanded: true,
                decoration: const InputDecoration(
                  labelText: 'İlgili Danışan (isteğe bağlı)',
                ),
                items: [
                  const DropdownMenuItem<String>(
                    value: null,
                    child: Text('Danışan seçilmedi',
                        style: TextStyle()),
                  ),
                  for (final c in widget.clients)
                    DropdownMenuItem<String>(
                      value: c.id,
                      child: Text(c.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle()),
                    ),
                ],
                onChanged: (v) => setState(() => _clientId = v),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: _pickDate,
                      borderRadius: BorderRadius.circular(AppSizes.radiusSm),
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          labelText: 'Son Tarih (isteğe bağlı)',
                          suffixIcon: Icon(Icons.calendar_month_outlined, size: 18),
                        ),
                        child: Text(
                          _dueDate == null
                              ? 'Tarih seçilmedi'
                              : fmtDate(DateTime.parse(_dueDate!)),
                          style: const TextStyle(
                              fontSize: 14,
                              color: AppColors.text),
                        ),
                      ),
                    ),
                  ),
                  if (_dueDate != null)
                    IconButton(
                      tooltip: 'Tarihi temizle',
                      onPressed: () => setState(() => _dueDate = null),
                      icon: const Icon(Icons.close, size: 17, color: AppColors.muted),
                    ),
                ],
              ),
              const SizedBox(height: 14),
              DropdownButtonFormField<String>(
                initialValue: _priority,
                isExpanded: true,
                decoration: const InputDecoration(labelText: 'Öncelik'),
                items: [
                  for (final e in const [('low', 'Düşük'), ('medium', 'Orta'), ('high', 'Yüksek')])
                    DropdownMenuItem<String>(
                      value: e.$1,
                      child: Text(e.$2, style: const TextStyle()),
                    ),
                ],
                onChanged: (v) => setState(() => _priority = v ?? 'medium'),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('İptal', style: TextStyle()),
        ),
        FilledButton.icon(
          onPressed: _save,
          icon: const Icon(Icons.save_outlined, size: 17),
          label: const Text('Kaydet', style: TextStyle()),
        ),
      ],
    );
  }
}
