/// Seans notu (SOAP).
class Note {
  final String id;
  String clientId;
  String title;
  String mood;
  String subjective;
  String objective;
  String assessment;
  String plan;
  double date;

  Note({
    required this.id,
    required this.clientId,
    this.title = '',
    this.mood = '',
    this.subjective = '',
    this.objective = '',
    this.assessment = '',
    this.plan = '',
    double? date,
  }) : date = date ?? DateTime.now().millisecondsSinceEpoch.toDouble();

  Map<String, dynamic> toJson() => {
        'id': id,
        'clientId': clientId,
        'title': title,
        'mood': mood,
        'subjective': subjective,
        'objective': objective,
        'assessment': assessment,
        'plan': plan,
        'date': date,
      };

  factory Note.fromJson(Map<String, dynamic> j) => Note(
        id: j['id'] as String,
        clientId: j['clientId'] as String? ?? '',
        title: j['title'] as String? ?? '',
        mood: j['mood'] as String? ?? '',
        subjective: j['subjective'] as String? ?? '',
        objective: j['objective'] as String? ?? '',
        assessment: j['assessment'] as String? ?? '',
        plan: j['plan'] as String? ?? '',
        date: (j['date'] as num?)?.toDouble() ?? 0,
      );
}
