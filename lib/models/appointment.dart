/// Randevu kaydı.
class Appointment {
  final String id;
  String date; // ISO (yyyy-MM-dd)
  String time; // HH:mm
  String clientId;
  String type; // intake | therapy | assessment | followup | other
  String status; // planned | done | cancelled
  int durationMin;
  String notes;
  String? repeatGroup;
  double createdAt;

  Appointment({
    required this.id,
    required this.date,
    required this.time,
    this.clientId = '',
    this.type = 'therapy',
    this.status = 'planned',
    this.durationMin = 50,
    this.notes = '',
    this.repeatGroup,
    double? createdAt,
  }) : createdAt = createdAt ?? DateTime.now().millisecondsSinceEpoch.toDouble();

  Map<String, dynamic> toJson() => {
        'id': id,
        'date': date,
        'time': time,
        'clientId': clientId,
        'type': type,
        'status': status,
        'durationMin': durationMin,
        'notes': notes,
        'repeatGroup': repeatGroup,
        'createdAt': createdAt,
      };

  factory Appointment.fromJson(Map<String, dynamic> j) => Appointment(
        id: j['id'] as String,
        date: j['date'] as String? ?? '',
        time: j['time'] as String? ?? '',
        clientId: j['clientId'] as String? ?? '',
        type: j['type'] as String? ?? 'therapy',
        status: j['status'] as String? ?? 'planned',
        durationMin: (j['durationMin'] as num?)?.toInt() ?? 50,
        notes: j['notes'] as String? ?? '',
        repeatGroup: j['repeatGroup'] as String?,
        createdAt: (j['createdAt'] as num?)?.toDouble() ?? 0,
      );
}
