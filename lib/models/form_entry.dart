/// Değerlendirme formu (anket) ve soruları.
class FormEntry {
  final String id;
  String title;
  String description;
  bool isActive;
  List<FormQuestion> questions;

  /// Formla ilişkilendirilen DSM-5-TR / ICD-10-CM kodları.
  List<String> diagnosisCodes;
  double createdAt;
  double updatedAt;

  FormEntry({
    required this.id,
    required this.title,
    this.description = '',
    this.isActive = true,
    List<FormQuestion>? questions,
    List<String>? diagnosisCodes,
    double? createdAt,
    double? updatedAt,
  }) : questions = questions ?? [],
       diagnosisCodes = diagnosisCodes ?? [],
       createdAt =
           createdAt ?? DateTime.now().millisecondsSinceEpoch.toDouble(),
       updatedAt =
           updatedAt ??
           createdAt ??
           DateTime.now().millisecondsSinceEpoch.toDouble();

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'isActive': isActive,
    'questions': questions.map((q) => q.toJson()).toList(),
    'diagnosisCodes': diagnosisCodes,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };

  factory FormEntry.fromJson(Map<String, dynamic> j) => FormEntry(
    id: j['id'] as String,
    title: j['title'] as String? ?? '',
    description: j['description'] as String? ?? '',
    isActive: j['isActive'] as bool? ?? true,
    questions:
        (j['questions'] as List?)
            ?.map((e) => FormQuestion.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    diagnosisCodes:
        (j['diagnosisCodes'] as List?)?.map((e) => e.toString()).toList() ?? [],
    createdAt: (j['createdAt'] as num?)?.toDouble() ?? 0,
    updatedAt: (j['updatedAt'] as num?)?.toDouble() ?? 0,
  );
}

class FormQuestion {
  final String id;
  String type; // text | scale | multiple_choice | yes_no
  String text;
  bool required;
  List<String> options;
  String expectedAnswer;
  String helpText;
  int scaleMax;
  int order;

  FormQuestion({
    required this.id,
    this.type = 'text',
    required this.text,
    this.required = true,
    List<String>? options,
    this.expectedAnswer = '',
    this.helpText = '',
    this.scaleMax = 5,
    this.order = 0,
  }) : options = options ?? [];

  Map<String, dynamic> toJson() => {
    'id': id,
    'type': type,
    'text': text,
    'required': required,
    'options': options,
    'expectedAnswer': expectedAnswer,
    'helpText': helpText,
    'scaleMax': scaleMax,
    'order': order,
  };

  factory FormQuestion.fromJson(Map<String, dynamic> j) => FormQuestion(
    id: j['id'] as String,
    type: j['type'] as String? ?? 'text',
    text: j['text'] as String? ?? '',
    required: j['required'] as bool? ?? true,
    options: (j['options'] as List?)?.map((e) => e.toString()).toList() ?? [],
    expectedAnswer: j['expectedAnswer'] as String? ?? '',
    helpText: j['helpText'] as String? ?? '',
    scaleMax: (j['scaleMax'] as num?)?.toInt() ?? 5,
    order: (j['order'] as num?)?.toInt() ?? 0,
  );
}
