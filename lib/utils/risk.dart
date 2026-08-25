import '../models/app_data.dart';
import '../models/assessment.dart';

/// Web sürümündeki risk algılama mantığıyla uyumlu.
final RegExp _riskRe = RegExp(r'(zarar|intihar|canına kıyma|hayatına son|risk)', caseSensitive: false);

bool isRiskyAssessment(AppData data, Assessment a) {
  if (a.risk != true) return false;
  final form = data.formById(a.formId);
  if (form == null) return false;
  for (final q in form.questions) {
    final v = a.answers[q.id];
    if (v == null) continue;
    if (q.type == 'yes_no' && _riskRe.hasMatch(q.text)) {
      if (v.toString().toLowerCase().contains('evet')) return true;
    }
    if (q.type == 'scale' && _riskRe.hasMatch(q.text)) {
      final n = num.tryParse(v.toString());
      if (n != null && n >= (q.scaleMax > 0 ? q.scaleMax : 5)) return true;
    }
  }
  return false;
}
