/// Görev kaydı.
class Task {
  final String id;
  String text;
  String clientId;
  String? dueDate; // yyyy-MM-dd
  String priority; // low | medium | high
  bool done;
  double createdAt;

  Task({
    required this.id,
    required this.text,
    this.clientId = '',
    this.dueDate,
    this.priority = 'medium',
    this.done = false,
    double? createdAt,
  }) : createdAt = createdAt ?? DateTime.now().millisecondsSinceEpoch.toDouble();

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'clientId': clientId,
        'dueDate': dueDate,
        'priority': priority,
        'done': done,
        'createdAt': createdAt,
      };

  factory Task.fromJson(Map<String, dynamic> j) => Task(
        id: j['id'] as String,
        text: j['text'] as String? ?? '',
        clientId: j['clientId'] as String? ?? '',
        dueDate: j['dueDate'] as String?,
        priority: j['priority'] as String? ?? 'medium',
        done: j['done'] as bool? ?? false,
        createdAt: (j['createdAt'] as num?)?.toDouble() ?? 0,
      );
}
