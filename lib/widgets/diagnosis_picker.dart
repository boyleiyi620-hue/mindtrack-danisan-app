import 'package:flutter/material.dart';

import '../data/diagnosis_codes.dart';
import '../theme/app_theme.dart';

class DiagnosisCodePickerDialog extends StatefulWidget {
  const DiagnosisCodePickerDialog({super.key, this.initialCodes = const []});

  final List<String> initialCodes;

  @override
  State<DiagnosisCodePickerDialog> createState() =>
      _DiagnosisCodePickerDialogState();
}

class _DiagnosisCodePickerDialogState extends State<DiagnosisCodePickerDialog> {
  late final TextEditingController _search;
  late final Set<String> _selected;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _search = TextEditingController();
    _selected = {...widget.initialCodes};
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  List<DiagnosisCode> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return diagnosisCodes;
    return diagnosisCodes.where((item) {
      return item.code.toLowerCase().contains(q) ||
          item.label.toLowerCase().contains(q) ||
          item.category.toLowerCase().contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final items = _filtered;
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 860, maxHeight: 720),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 18, 12, 10),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'DSM-5-TR / ICD-10-CM Tanı Kodu Ekle',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    '${_selected.length} seçili',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.muted,
                    ),
                  ),
                  IconButton(
                    tooltip: 'Kapat',
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close, color: AppColors.muted),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                controller: _search,
                autofocus: true,
                onChanged: (value) => setState(() => _query = value),
                decoration: InputDecoration(
                  labelText: 'Kod veya tanı ara',
                  hintText: 'Örn: F32, depresyon, anxiety',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _query.isEmpty
                      ? null
                      : IconButton(
                          onPressed: () {
                            _search.clear();
                            setState(() => _query = '');
                          },
                          icon: const Icon(Icons.close),
                        ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${items.length} / $diagnosisCodeCount kod gösteriliyor',
                  style: const TextStyle(fontSize: 12, color: AppColors.muted),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Divider(height: 1),
            Expanded(
              child: items.isEmpty
                  ? const Center(
                      child: Text('Aramanızla eşleşen kod bulunamadı.'),
                    )
                  : ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final item = items[index];
                        final checked = _selected.contains(item.code);
                        return CheckboxListTile(
                          value: checked,
                          onChanged: (_) => setState(() {
                            if (checked) {
                              _selected.remove(item.code);
                            } else {
                              _selected.add(item.code);
                            }
                          }),
                          controlAffinity: ListTileControlAffinity.trailing,
                          title: Text(
                            item.display,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 13.5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            item.category,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 11.5,
                              color: AppColors.muted,
                            ),
                          ),
                        );
                      },
                    ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Vazgeç'),
                  ),
                  const SizedBox(width: 8),
                  FilledButton.icon(
                    onPressed: () => Navigator.pop(context, _selected.toList()),
                    icon: const Icon(Icons.check, size: 16),
                    label: const Text('Kodları Kaydet'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
