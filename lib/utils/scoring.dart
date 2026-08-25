import '../models/app_data.dart';
import '../models/assessment.dart';
import '../models/form_entry.dart';

/// Değerlendirme puanı: formdaki ölçek sorularının ortalaması.
/// Web sürümündeki `assessmentScore` ile birebir uyumlu.
class AssessmentScore {
  const AssessmentScore({required this.avg, required this.max, required this.n});
  final double avg;
  final int max;
  final int n;
}

AssessmentScore? assessmentScore(AppData data, Assessment a) {
  final form = data.formById(a.formId);
  final qs = form?.questions ?? const <FormQuestion>[];
  if (qs.isEmpty) return null;
  final scales = <int>[];
  for (final q in qs) {
    if (q.type != 'scale') continue;
    final v = a.answers[q.id];
    final n = v is int
        ? v
        : v is num
            ? v.toInt()
            : int.tryParse(v?.toString() ?? '');
    if (n != null) scales.add(n);
  }
  if (scales.isEmpty) return null;
  final max = qs
      .where((q) => q.type == 'scale')
      .map((q) => q.scaleMax > 0 ? q.scaleMax : 5)
      .fold<int>(0, (a, b) => a > b ? a : b);
  final sum = scales.fold<int>(0, (a, b) => a + b);
  return AssessmentScore(
    avg: sum / scales.length,
    max: max,
    n: scales.length,
  );
}

/// Soru tipi etiketi (Türkçe).
String questionTypeLabel(String type) {
  switch (type) {
    case 'text':
      return 'Açık Uçlu';
    case 'multiple_choice':
      return 'Çoktan Seçmeli';
    case 'multi_select':
      return 'Çoklu Seçim';
    case 'scale':
      return 'Ölçek';
    case 'yes_no':
      return 'Evet/Hayır';
    case 'date':
      return 'Tarih';
    case 'number':
      return 'Sayı';
    default:
      return type.isEmpty ? '-' : type;
  }
}

/// Cevabı ekranda göstermek için okunabilir metin (liste ise virgülle birleştirir).
String answerDisplay(Object? v) {
  if (v == null) return '—';
  if (v is List) {
    return v.map((e) => e.toString()).join(', ');
  }
  return v.toString();
}
