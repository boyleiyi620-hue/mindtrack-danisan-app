/// Doldurulmuş değerlendirme — form + danışan + cevaplar.
class Assessment {
  final String id;
  String clientId;
  String formId;
  Map<String, Object?> answers; // questionId -> cevap
  double submittedAt;
  double? score;
  bool risk; // risk işareti (web sürümüyle uyumlu)

  Assessment({
    required this.id,
    required this.clientId,
    required this.formId,
    Map<String, Object?>? answers,
    double? submittedAt,
    this.score,
    this.risk = false,
  })  : answers = answers ?? {},
        submittedAt = submittedAt ?? DateTime.now().millisecondsSinceEpoch.toDouble();

  Map<String, dynamic> toJson() => {
        'id': id,
        'clientId': clientId,
        'formId': formId,
        'answers': answers,
        'submittedAt': submittedAt,
        'score': score,
        'risk': risk,
      };

  factory Assessment.fromJson(Map<String, dynamic> j) => Assessment(
        id: j['id'] as String,
        clientId: j['clientId'] as String? ?? '',
        formId: j['formId'] as String? ?? '',
        answers: (j['answers'] as Map?)?.map((k, v) => MapEntry(k.toString(), v)) ??
            <String, Object?>{},
        submittedAt: (j['submittedAt'] as num?)?.toDouble() ?? 0,
        score: (j['score'] as num?)?.toDouble(),
        risk: j['risk'] as bool? ?? false,
      );
}
