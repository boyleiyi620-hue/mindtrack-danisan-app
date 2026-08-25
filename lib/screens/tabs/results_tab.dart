import 'package:flutter/material.dart';

import '../../data/data_store.dart';
import '../../models/app_data.dart';
import '../../models/assessment.dart';
import '../../models/form_entry.dart';
import '../../theme/app_theme.dart';
import '../../utils/formats.dart';
import '../../utils/risk.dart';
import '../../utils/scoring.dart';

/// Sonuçlar ve Analiz — değerlendirme listesi, filtreler, form analizi ve detay.
class ResultsTab extends StatefulWidget {
  const ResultsTab({super.key, required this.data, this.onNavigate});

  final DataStore data;
  final ValueChanged<String>? onNavigate;

  @override
  State<ResultsTab> createState() => _ResultsTabState();
}

class _ResultsTabState extends State<ResultsTab> {
  String? _formId;
  String? _clientId;
  String _q = '';

  AppData get _d => widget.data.data;

  List<Assessment> _filtered() {
    final q = _q.trim().toLowerCase();
    final list = _d.assessments.where((a) {
      if (_formId != null && a.formId != _formId) return false;
      if (_clientId != null && a.clientId != _clientId) return false;
      if (q.isNotEmpty) {
        final c = _d.clientById(a.clientId)?.name.toLowerCase() ?? '';
        final f = _d.formById(a.formId)?.title.toLowerCase() ?? '';
        if (!c.contains(q) && !f.contains(q)) return false;
      }
      return true;
    }).toList();
    list.sort((a, b) => b.submittedAt.compareTo(a.submittedAt));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filtered();
    final riskCount = _d.assessments.where((a) => isRiskyAssessment(_d, a)).length;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(18),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _header(context, filtered.length, riskCount),
              const SizedBox(height: 14),
              _filters(context),
              const SizedBox(height: 16),
              if (_d.assessments.isEmpty)
                _emptyState(context)
              else ...[
                if (_formId != null)
                  _formAnalytics(context, _formId!)
                else
                  _globalAnalytics(context),
                const SizedBox(height: 20),
                _listCard(context, filtered),
              ],
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context, int filteredCount, int riskCount) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sonuçlar ve Analiz',
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
                    '$filteredCount değerlendirme · ${_d.assessments.length} toplam',
                    style: const TextStyle(
                        fontSize: 13.5,
                        color: AppColors.muted),
                  ),
                  if (riskCount > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 9, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.dangerSoft,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '$riskCount risk işareti',
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppColors.danger),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _filters(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(color: AppColors.border),
      ),
      child: LayoutBuilder(
        builder: (context, bc) {
          final wide = bc.maxWidth >= 820;
          final formField = DropdownButtonFormField<String>(
            initialValue: _formId,
            isExpanded: true,
            decoration: const InputDecoration(
              labelText: 'Form',
              isDense: true,
            ),
            items: [
              const DropdownMenuItem(value: '', child: Text('Tüm Formlar')),
              for (final f in _d.forms)
                DropdownMenuItem(value: f.id, child: Text(f.title)),
            ],
            onChanged: (v) => setState(() => _formId = v?.isEmpty ?? true ? null : v),
          );
          final clientField = DropdownButtonFormField<String>(
            initialValue: _clientId,
            isExpanded: true,
            decoration: const InputDecoration(
              labelText: 'Danışan',
              isDense: true,
            ),
            items: [
              const DropdownMenuItem(value: '', child: Text('Tüm Danışanlar')),
              for (final c in _d.clients)
                DropdownMenuItem(value: c.id, child: Text(c.name)),
            ],
            onChanged: (v) =>
                setState(() => _clientId = v?.isEmpty ?? true ? null : v),
          );
          final searchField = TextField(
            onChanged: (v) => setState(() => _q = v),
            decoration: const InputDecoration(
              labelText: 'Ara',
              hintText: 'Danışan veya form...',
              isDense: true,
              prefixIcon: Icon(Icons.search, size: 18),
            ),
          );
          final clearBtn = OutlinedButton.icon(
            onPressed: () => setState(() {
              _formId = null;
              _clientId = null;
              _q = '';
            }),
            icon: const Icon(Icons.filter_alt_off, size: 15),
            label: const Text('Filtreyi Temizle',
                style: TextStyle(fontSize: 12.5)),
          );

          if (wide) {
            return Row(
              children: [
                Expanded(child: formField),
                const SizedBox(width: 10),
                Expanded(child: clientField),
                const SizedBox(width: 10),
                Expanded(child: searchField),
                const SizedBox(width: 10),
                clearBtn,
              ],
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              formField,
              const SizedBox(height: 10),
              clientField,
              const SizedBox(height: 10),
              searchField,
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: clearBtn,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _emptyState(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 44, horizontal: 20),
        child: Column(
          children: [
            Container(
              width: 62,
              height: 62,
              decoration: BoxDecoration(
                color: AppColors.primarySoft,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Icon(Icons.bar_chart,
                  size: 28, color: AppColors.primary),
            ),
            const SizedBox(height: 14),
            const Text(
              'Henüz Değerlendirme Yok',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: AppColors.text),
            ),
            const SizedBox(height: 6),
            const Text(
              'Danışanlarınız formları doldurduğunda sonuçlar burada analiz edilir.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13, color: AppColors.muted),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: () => widget.onNavigate?.call('forms'),
              icon: const Icon(Icons.add, size: 17),
              label: const Text('Form Oluştur',
                  style: TextStyle()),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------- Form bazlı analiz ----------------
  Widget _formAnalytics(BuildContext context, String formId) {
    final form = _d.formById(formId);
    if (form == null) return const SizedBox.shrink();
    final list = _d.assessments.where((a) => a.formId == formId).toList();
    final clients =
        list.where((a) => a.clientId.isNotEmpty).map((a) => a.clientId).toSet().length;
    final trendPts = _scoreTrendPoints(form, list);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              _infoChip(Icons.assignment_turned_in_outlined,
                  '${list.length} değerlendirme'),
              _infoChip(Icons.people_outline, '$clients danışan'),
              TextButton.icon(
                onPressed: () => setState(() => _formId = null),
                icon: const Icon(Icons.close, size: 15),
                label: const Text('Filtreyi temizle',
                    style: TextStyle(fontSize: 12.5)),
              ),
            ],
          ),
          const SizedBox(height: 14),
          if (trendPts.isNotEmpty) ...[
            _scoreTrend(trendPts),
            const SizedBox(height: 18),
          ],
          _scaleAverages(form, list),
          const SizedBox(height: 18),
          _yesNoSection(form, list),
          const SizedBox(height: 18),
          _choiceSection(form, list),
        ],
      ),
    );
  }

  // ---------------- Puan trendi (CustomPaint çizgi grafiği) ----------------
  List<_TrendPoint> _scoreTrendPoints(FormEntry form, List<Assessment> list) {
    final sorted = list.toList()
      ..sort((a, b) => a.submittedAt.compareTo(b.submittedAt));
    final pts = <_TrendPoint>[];
    for (final a in sorted) {
      final sc = assessmentScore(_d, a);
      if (sc == null) continue;
      final dt = DateTime.fromMillisecondsSinceEpoch(a.submittedAt.toInt());
      pts.add(_TrendPoint(
        date: fmtDate(dt),
        value: sc.avg,
        max: sc.max,
        risk: isRiskyAssessment(_d, a),
      ));
    }
    return pts;
  }

  Widget _scoreTrend(List<_TrendPoint> points) {
    final yMax = points.fold<int>(1, (a, b) => b.max > a ? b.max : a);
    final values = points.map((e) => e.value).toList()
      ..sort();
    final low = values.first;
    final high = values.last;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Puan Trendi',
            style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w800,
                color: AppColors.text)),
        const SizedBox(height: 6),
        Wrap(
          spacing: 12,
          runSpacing: 4,
          children: [
            Text(
              'En düşük ${low.toStringAsFixed(1)} · En yüksek ${high.toStringAsFixed(1)}',
              style: const TextStyle(
                  fontSize: 12, color: AppColors.muted),
            ),
            if (points.any((e) => e.risk))
              const Text(
                '● risk işaretli değerlendirme',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.danger),
              ),
          ],
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: AppColors.bg2.withValues(alpha: .4),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.border),
          ),
          padding: const EdgeInsets.fromLTRB(8, 12, 12, 8),
          child: SizedBox(
            height: 190,
            width: double.infinity,
            child: CustomPaint(
              painter: _TrendPainter(points: points, yMax: yMax),
            ),
          ),
        ),
      ],
    );
  }

  Widget _infoChip(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.primarySoft,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: AppColors.primaryDark),
          const SizedBox(width: 5),
          Text(
            text,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AppColors.primaryDark),
          ),
        ],
      ),
    );
  }

  Widget _scaleAverages(FormEntry form, List<Assessment> list) {
    final scaleQs = form.questions.where((q) => q.type == 'scale').toList();
    if (scaleQs.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Ölçek Ortalamaları',
            style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w800,
                color: AppColors.text)),
        const SizedBox(height: 10),
        for (final q in scaleQs)
          _scaleAvgRow(q, list),
      ],
    );
  }

  Widget _scaleAvgRow(FormQuestion q, List<Assessment> list) {
    final vals = <int>[];
    for (final a in list) {
      final v = a.answers[q.id];
      final n = v is int
          ? v
          : v is num
              ? v.toInt()
              : int.tryParse(v?.toString() ?? '');
      if (n != null) vals.add(n);
    }
    final max = q.scaleMax > 0 ? q.scaleMax : 5;
    final avg = vals.isEmpty ? null : vals.reduce((a, b) => a + b) / vals.length;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              q.text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 12.5, color: AppColors.text2),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: LinearProgressIndicator(
                    value: avg == null ? 0 : (avg / max).clamp(0.0, 1.0),
                    minHeight: 8,
                    backgroundColor: AppColors.bg2,
                    color: AppColors.info,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  avg == null
                      ? 'yanıt yok (${vals.length})'
                      : '${avg.toStringAsFixed(2)} / $max · ${vals.length} yanıt',
                  style: const TextStyle(
                      fontSize: 11, color: AppColors.muted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _yesNoSection(FormEntry form, List<Assessment> list) {
    final yesNoQs = form.questions.where((q) => q.type == 'yes_no').toList();
    if (yesNoQs.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Evet / Hayır Dağılımı',
            style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w800,
                color: AppColors.text)),
        const SizedBox(height: 10),
        LayoutBuilder(
          builder: (context, bc) {
            final cols = bc.maxWidth >= 720 ? 2 : 1;
            final cardW = (bc.maxWidth - 12.0 * (cols - 1)) / cols;
            return Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                for (final q in yesNoQs)
                  SizedBox(width: cardW, child: _yesNoCard(q, list)),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _yesNoCard(FormQuestion q, List<Assessment> list) {
    var yes = 0, no = 0, skip = 0;
    for (final a in list) {
      final v = a.answers[q.id]?.toString();
      if (v == null || v.isEmpty) {
        skip++;
      } else if (v.toLowerCase() == 'evet') {
        yes++;
      } else {
        no++;
      }
    }
    final n = yes + no;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.bg2.withValues(alpha: .45),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            q.text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 12.5,
                fontWeight: FontWeight.w700,
                color: AppColors.text),
          ),
          const SizedBox(height: 8),
          _barRow('Evet', yes, n, AppColors.success),
          const SizedBox(height: 5),
          _barRow('Hayır', no, n, AppColors.danger),
          const SizedBox(height: 5),
          Text(
            '$skip cevapsız / $n toplam',
            style: const TextStyle(
                fontSize: 11, color: AppColors.muted),
          ),
        ],
      ),
    );
  }

  Widget _barRow(String label, int count, int n, Color color) {
    return Row(
      children: [
        SizedBox(
          width: 42,
          child: Text(
            label,
            style: TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w700,
                color: color),
          ),
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: LinearProgressIndicator(
              value: n == 0 ? 0 : count / n,
              minHeight: 7,
              backgroundColor: AppColors.bg2,
              color: color,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '$count',
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: AppColors.text),
        ),
      ],
    );
  }

  Widget _choiceSection(FormEntry form, List<Assessment> list) {
    final mcQs =
        form.questions.where((q) => q.type == 'multiple_choice').toList();
    if (mcQs.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Seçenek Dağılımı',
            style: TextStyle(
                fontSize: 14.5,
                fontWeight: FontWeight.w800,
                color: AppColors.text)),
        const SizedBox(height: 10),
        for (final q in mcQs) _choiceCard(q, list),
      ],
    );
  }

  Widget _choiceCard(FormQuestion q, List<Assessment> list) {
    final cnt = <String, int>{};
    for (final a in list) {
      final v = a.answers[q.id];
      if (v == null) continue;
      final items = v is List ? v : [v];
      for (final it in items) {
        final key = it.toString();
        cnt[key] = (cnt[key] ?? 0) + 1;
      }
    }
    if (cnt.isEmpty) return const SizedBox.shrink();
    final sorted = cnt.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            q.text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 12.5,
                fontWeight: FontWeight.w700,
                color: AppColors.text),
          ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              for (final e in sorted)
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: AppColors.primarySoft,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.border2),
                  ),
                  child: Text(
                    '${e.key} · ${e.value}',
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryDark),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  // ---------------- Global analiz ----------------
  Widget _globalAnalytics(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LayoutBuilder(
          builder: (context, bc) {
            final wide = bc.maxWidth >= 760;
            final monthly = _monthlyFlow();
            final fill = _formFill();
            if (wide) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: monthly),
                  const SizedBox(width: 16),
                  Expanded(child: fill),
                ],
              );
            }
            return Column(
              children: [
                monthly,
                const SizedBox(height: 16),
                fill,
              ],
            );
          },
        ),
        const SizedBox(height: 16),
        _formAnalysisGrid(context),
      ],
    );
  }

  Widget _monthlyFlow() {
    final months = <_MonthBar>[];
    final now = DateTime.now();
    for (var i = 11; i >= 0; i--) {
      final dt = DateTime(now.year, now.month - i, 1);
      final key = '${dt.year.toString().padLeft(4, '0')}-${pad2(dt.month)}';
      final n = _d.assessments.where((a) {
        final at = DateTime.fromMillisecondsSinceEpoch(a.submittedAt.toInt());
        return '${at.year.toString().padLeft(4, '0')}-${pad2(at.month)}' == key;
      }).length;
      months.add(_MonthBar(_shortMonth(dt.month), n));
    }
    final maxN = months.fold<int>(0, (a, b) => a > b.n ? a : b.n);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Aylık Değerlendirme Akışı (son 12 ay)',
              style: TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w800,
                  color: AppColors.text)),
          const SizedBox(height: 14),
          SizedBox(
            height: 170,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final m in months)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '${m.n}',
                            style: const TextStyle(
                                fontSize: 9.5,
                                color: AppColors.muted),
                          ),
                          const SizedBox(height: 2),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: maxN == 0 ? 4 : 8 + (m.n / maxN) * 96,
                            decoration: BoxDecoration(
                              color: m.n > 0
                                  ? AppColors.primary
                                  : AppColors.border2,
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(5)),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            m.label,
                            style: const TextStyle(
                                fontSize: 9.5,
                                color: AppColors.muted),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _shortMonth(int m) {
    const names = [
      'Oca', 'Şub', 'Mar', 'Nis', 'May', 'Haz',
      'Tem', 'Ağu', 'Eyl', 'Eki', 'Kas', 'Ara',
    ];
    return names[m - 1];
  }

  Widget _formFill() {
    final counts = [
      for (final f in _d.forms)
        (f, _d.assessments.where((a) => a.formId == f.id).length),
    ].where((x) => x.$2 > 0).toList();
    counts.sort((a, b) => b.$2.compareTo(a.$2));
    final maxN =
        counts.isEmpty ? 0 : counts.first.$2;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(AppSizes.radius),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Form Doluluk',
              style: TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w800,
                  color: AppColors.text)),
          const SizedBox(height: 12),
          if (counts.isEmpty)
            const Text(
              'Henüz doldurulmuş form yok.',
              style: TextStyle(
                  fontSize: 12.5, color: AppColors.muted),
            )
          else
            for (final x in counts)
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            x.$1.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12.5,
                                fontWeight: FontWeight.w700,
                                color: AppColors.text),
                          ),
                        ),
                        Text(
                          '${x.$2} kayıt',
                          style: const TextStyle(
                              fontSize: 11.5,
                              color: AppColors.muted),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: LinearProgressIndicator(
                        value: maxN == 0 ? 0 : x.$2 / maxN,
                        minHeight: 8,
                        backgroundColor: AppColors.bg2,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }

  Widget _formAnalysisGrid(BuildContext context) {
    final counts = [
      for (final f in _d.forms)
        (f, _d.assessments.where((a) => a.formId == f.id).length),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Form Bazında Analiz',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: AppColors.text)),
        const SizedBox(height: 6),
        const Text(
          'Bir form seçtiğinizde ölçek ortalamaları, evet/hayır dağılımı ve seçenek dağılımı otomatik hesaplanır.',
          style: TextStyle(
              fontSize: 12.5, color: AppColors.muted),
        ),
        const SizedBox(height: 12),
        LayoutBuilder(
          builder: (context, bc) {
            final cols = bc.maxWidth >= 900
                ? 4
                : bc.maxWidth >= 560
                    ? 2
                    : 1;
            final cardW = (bc.maxWidth - 12.0 * (cols - 1)) / cols;
            return Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                for (final x in counts)
                  SizedBox(
                    width: cardW,
                    child: InkWell(
                      onTap: () => setState(() => _formId = x.$1.id),
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: AppColors.card,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColors.border),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              x.$1.title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.text),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '${x.$2} değerlendirme',
                              style: const TextStyle(
                                  fontSize: 11.5,
                                  color: AppColors.muted),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }

  // ---------------- Değerlendirme listesi ----------------
  Widget _listCard(BuildContext context, List<Assessment> list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Değerlendirme Listesi',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: AppColors.text)),
        const SizedBox(height: 10),
        if (list.isEmpty)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.bg2.withValues(alpha: .4),
              borderRadius: BorderRadius.circular(AppSizes.radius),
              border: Border.all(color: AppColors.border2),
            ),
            child: const Column(
              children: [
                Icon(Icons.search_off, size: 26, color: AppColors.muted),
                SizedBox(height: 8),
                Text(
                  'Arama kriterlerinize uygun değerlendirme bulunamadı',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
                      color: AppColors.text2),
                ),
              ],
            ),
          )
        else
          for (final a in list) _assessRow(context, a),
      ],
    );
  }

  Widget _assessRow(BuildContext context, Assessment a) {
    final c = _d.clientById(a.clientId);
    final f = _d.formById(a.formId);
    final sc = assessmentScore(_d, a);
    final risk = isRiskyAssessment(_d, a);
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: risk ? AppColors.danger.withValues(alpha: .4) : AppColors.border),
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: risk
                  ? AppColors.danger.withValues(alpha: .12)
                  : AppColors.info.withValues(alpha: .12),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(
              risk ? Icons.warning_amber_rounded : Icons.assignment,
              size: 18,
              color: risk ? AppColors.danger : AppColors.info,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        c?.name ?? 'Anonim Danışan',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                            color: AppColors.text),
                      ),
                    ),
                    const SizedBox(width: 8),
                    if (risk)
                      _chip('Risk işareti', AppColors.danger, AppColors.dangerSoft)
                    else if (sc != null)
                      _chip('${sc.avg.toStringAsFixed(1)}/${sc.max}', AppColors.info, AppColors.infoSoft),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  '${f?.title ?? 'Bilinmeyen Form'} · ${fmtDateTime(a.submittedAt)}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 12, color: AppColors.muted),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            tooltip: 'İncele',
            visualDensity: VisualDensity.compact,
            onPressed: () => _openDetail(context, a),
            icon: const Icon(Icons.visibility_outlined,
                size: 19, color: AppColors.primaryDark),
          ),
          IconButton(
            tooltip: 'Sil',
            visualDensity: VisualDensity.compact,
            onPressed: () => _confirmDelete(context, a),
            icon: const Icon(Icons.delete_outline,
                size: 19, color: AppColors.danger),
          ),
        ],
      ),
    );
  }

  Widget _chip(String text, Color fg, Color bg) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 10.5,
            fontWeight: FontWeight.w700,
            color: fg),
      ),
    );
  }

  Future<void> _openDetail(BuildContext context, Assessment a) {
    return showDialog<void>(
      context: context,
      builder: (_) => AssessmentDetailDialog(data: widget.data, assessment: a),
    );
  }

  Future<void> _confirmDelete(BuildContext context, Assessment a) async {
    final messenger = ScaffoldMessenger.of(context);
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Değerlendirmeyi sil',
            style: TextStyle()),
        content: const Text(
          'Bu değerlendirme kaydı kalıcı olarak silinecek. Bu işlem geri alınamaz.',
          style: TextStyle(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Vazgeç',
                style: TextStyle()),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            style: FilledButton.styleFrom(backgroundColor: AppColors.danger),
            child: const Text('Evet, Sil',
                style: TextStyle()),
          ),
        ],
      ),
    );
    if (ok == true) {
      _d.assessments.removeWhere((x) => x.id == a.id);
      widget.data.save();
      messenger
        ..hideCurrentSnackBar()
        ..showSnackBar(const SnackBar(
            content: Text('Değerlendirme silindi.',
                style: TextStyle())));
    }
  }
}

class _MonthBar {
  const _MonthBar(this.label, this.n);
  final String label;
  final int n;
}

/// Değerlendirme detay penceresi.
class AssessmentDetailDialog extends StatelessWidget {
  const AssessmentDetailDialog(
      {super.key, required this.data, required this.assessment});

  final DataStore data;
  final Assessment assessment;

  @override
  Widget build(BuildContext context) {
    final a = assessment;
    final d = data.data;
    final c = d.clientById(a.clientId);
    final f = d.formById(a.formId);
    final sc = assessmentScore(d, a);
    final risk = isRiskyAssessment(d, a);

    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.radius)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 620, maxHeight: 700),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 18, 12, 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          f?.title ?? 'Bilinmeyen Form',
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              color: AppColors.text),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          '${c?.name ?? 'Anonim Danışan'} · ${fmtDateTime(a.submittedAt)}',
                          style: const TextStyle(
                              fontSize: 12.5,
                              color: AppColors.muted),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    tooltip: 'Kapat',
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close, color: AppColors.muted),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (risk)
                      Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          color: AppColors.dangerSoft,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: AppColors.danger.withValues(alpha: .3)),
                        ),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.warning_amber_rounded,
                                color: AppColors.danger, size: 20),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Bu değerlendirmede risk işareti var. Zarar/intihar içeriği taşıyan bir yanıt algılandı. Lütfen güvenlik değerlendirmesi yapın ve gerekli önlemleri alın.',
                                style: TextStyle(
                                    fontSize: 12.5,
                                    color: AppColors.danger,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ),
                    if (sc != null) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: AppColors.bg2.withValues(alpha: .5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 46,
                              height: 46,
                              decoration: BoxDecoration(
                                color: AppColors.primarySoft,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Center(
                                child: Text(
                                  sc.avg.toStringAsFixed(1),
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                      color: AppColors.primaryDark),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Ölçek Ortalaması',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.text),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '${sc.avg.toStringAsFixed(2)} / ${sc.max} · ${sc.n} ölçek sorusu',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColors.muted),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    const SizedBox(height: 16),
                    for (final q in f?.questions ?? const <FormQuestion>[])
                      _answerRow(q),
                  ],
                ),
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Kapat',
                        style: TextStyle()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _answerRow(FormQuestion q) {
    final v = assessment.answers[q.id];
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: AppColors.bg2.withValues(alpha: .4),
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  q.text,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: AppColors.text),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                decoration: BoxDecoration(
                  color: AppColors.primarySoft,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  questionTypeLabel(q.type),
                  style: const TextStyle(
                      fontSize: 10.5,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryDark),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            answerDisplay(v),
            style: const TextStyle(
                fontSize: 13.5, color: AppColors.text2),
          ),
        ],
      ),
    );
  }
}


/// Trend grafiği veri noktası.
class _TrendPoint {
  const _TrendPoint({
    required this.date,
    required this.value,
    required this.max,
    this.risk = false,
  });
  final String date;
  final double value;
  final int max;
  final bool risk;
}

/// Basit çizgi grafik painter — zaman içindeki puan değişimini gösterir.
class _TrendPainter extends CustomPainter {
  _TrendPainter({required this.points, required this.yMax});

  final List<_TrendPoint> points;
  final int yMax;

  @override
  void paint(Canvas canvas, Size size) {
    const left = 40.0;
    const rightPad = 10.0;
    const top = 10.0;
    const bottom = 24.0;
    final chartW = size.width - left - rightPad;
    final chartH = size.height - top - bottom;
    if (chartW <= 0 || chartH <= 0 || points.isEmpty) return;

    final gridPaint = Paint()
      ..color = AppColors.border
      ..strokeWidth = 1;
    final textStyle = TextStyle(
        fontSize: 9.5,
        color: AppColors.muted,
        fontWeight: FontWeight.w500);

    // Yatay kılavuz çizgileri + etiketler.
    final step = yMax <= 5 ? 1 : (yMax / 3).ceil();
    for (var v = 0; v <= yMax; v += step) {
      final y = top + chartH - (v / yMax) * chartH;
      canvas.drawLine(Offset(left, y), Offset(size.width - rightPad, y), gridPaint);
      _paintText(canvas, '$v', Offset(left - 6, y - 6), textStyle,
          alignRight: true);
    }

    // X ekseni çizgisi.
    canvas.drawLine(
        Offset(left, top + chartH),
        Offset(size.width - rightPad, top + chartH),
        Paint()
          ..color = AppColors.border2
          ..strokeWidth = 1.4);

    // Veri noktalarını normalize et.
    final n = points.length;
    Offset pos(int i) {
      final x = n == 1
          ? left + chartW / 2
          : left + (i / (n - 1)) * chartW;
      final y = top + chartH - (points[i].value.clamp(0.0, yMax.toDouble()) / yMax) * chartH;
      return Offset(x, y);
    }

    // Çizgi.
    final linePaint = Paint()
      ..color = AppColors.primary
      ..strokeWidth = 2.4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final path = Path()..moveTo(pos(0).dx, pos(0).dy);
    for (var i = 1; i < n; i++) {
      path.lineTo(pos(i).dx, pos(i).dy);
    }
    canvas.drawPath(path, linePaint);

    // Alan dolgusu (hafif).
    if (n >= 2) {
      final fillPath = Path.from(path)
        ..lineTo(pos(n - 1).dx, top + chartH)
        ..lineTo(pos(0).dx, top + chartH)
        ..close();
      canvas.drawPath(
        fillPath,
        Paint()
          ..color = AppColors.primary.withValues(alpha: .08)
          ..style = PaintingStyle.fill,
      );
    }

    // Noktalar + risk halkası.
    for (var i = 0; i < n; i++) {
      final p = pos(i);
      canvas.drawCircle(p, 4.2, Paint()..color = Colors.white);
      canvas.drawCircle(p, 3.4, Paint()..color = AppColors.primary);
      if (points[i].risk) {
        canvas.drawCircle(
          p,
          7,
          Paint()
            ..color = AppColors.danger.withValues(alpha: .9)
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.6,
        );
      }
      // Değer etiketi (üst üste binmeyi önlemek için sadece uç noktalar ve riskli noktalar).
      if (i == 0 || i == n - 1 || points[i].risk) {
        _paintText(
          canvas,
          points[i].value.toStringAsFixed(1),
          Offset(p.dx - 14, p.dy - 16),
          TextStyle(
              fontSize: 9.5,
              fontWeight: FontWeight.w700,
              color: points[i].risk ? AppColors.danger : AppColors.primaryDark),
        );
      }
    }

    // Tarih etiketleri: çoksa ilk/orta/son, azsa hepsi.
    final labelIdx = <int>{0, n - 1};
    if (n > 6) {
      for (var i = 2; i < n - 2; i += 2) {
        labelIdx.add(i);
      }
    } else {
      for (var i = 1; i < n - 1; i++) {
        labelIdx.add(i);
      }
    }
    for (final i in labelIdx) {
      final p = pos(i);
      _paintText(canvas, points[i].date, Offset(p.dx - 16, top + chartH + 7),
          textStyle);
    }
  }

  void _paintText(Canvas canvas, String text, Offset offset, TextStyle style,
      {bool alignRight = false}) {
    final tp = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
    )..layout();
    final dx = alignRight ? offset.dx - tp.width : offset.dx;
    tp.paint(canvas, Offset(dx, offset.dy));
  }

  @override
  bool shouldRepaint(_TrendPainter oldDelegate) =>
      oldDelegate.points != points || oldDelegate.yMax != yMax;
}
