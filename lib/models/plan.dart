/// Tedavi planı ve hedefleri.
class Plan {
  final String id;
  String clientId;
  String title;
  String description;
  List<String> interventions;
  List<Goal> goals;
  double createdAt;
  double updatedAt;

  Plan({
    required this.id,
    required this.clientId,
    this.title = 'Tedavi Planı',
    this.description = '',
    List<String>? interventions,
    List<Goal>? goals,
    double? createdAt,
    double? updatedAt,
  })  : interventions = interventions ?? [],
        goals = goals ?? [],
        createdAt = createdAt ?? DateTime.now().millisecondsSinceEpoch.toDouble(),
        updatedAt = updatedAt ?? createdAt ?? DateTime.now().millisecondsSinceEpoch.toDouble();

  Map<String, dynamic> toJson() => {
        'id': id,
        'clientId': clientId,
        'title': title,
        'description': description,
        'interventions': interventions,
        'goals': goals.map((g) => g.toJson()).toList(),
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };

  factory Plan.fromJson(Map<String, dynamic> j) => Plan(
        id: j['id'] as String,
        clientId: j['clientId'] as String? ?? '',
        title: j['title'] as String? ?? 'Tedavi Planı',
        description: j['description'] as String? ?? '',
        interventions:
            (j['interventions'] as List?)?.map((e) => e.toString()).toList() ?? [],
        goals: (j['goals'] as List?)
                ?.map((e) => Goal.fromJson(e as Map<String, dynamic>))
                .toList() ??
            [],
        createdAt: (j['createdAt'] as num?)?.toDouble() ?? 0,
        updatedAt: (j['updatedAt'] as num?)?.toDouble() ?? 0,
      );
}

class Goal {
  final String id;
  String text;
  String category; // short | long
  String status; // pending | in_progress | achieved | dropped
  String? targetDate;

  Goal({
    required this.id,
    required this.text,
    this.category = 'short',
    this.status = 'pending',
    this.targetDate,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'category': category,
        'status': status,
        'targetDate': targetDate,
      };

  factory Goal.fromJson(Map<String, dynamic> j) => Goal(
        id: j['id'] as String,
        text: j['text'] as String? ?? '',
        category: j['category'] as String? ?? 'short',
        status: j['status'] as String? ?? 'pending',
        targetDate: j['targetDate'] as String?,
      );
}
