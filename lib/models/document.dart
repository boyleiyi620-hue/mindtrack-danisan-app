/// Danışan dokümanı (PDF) — veri, base64 olarak cihazda saklanır.
class Document {
  final String id;
  String clientId;
  String name;
  String type; // application/pdf ...
  int size;
  String dataUrl; // base64 (veri bölümü)
  double addedAt;

  Document({
    required this.id,
    required this.clientId,
    required this.name,
    required this.dataUrl,
    this.type = 'application/pdf',
    this.size = 0,
    double? addedAt,
  }) : addedAt = addedAt ?? DateTime.now().millisecondsSinceEpoch.toDouble();

  Map<String, dynamic> toJson() => {
        'id': id,
        'clientId': clientId,
        'name': name,
        'type': type,
        'size': size,
        'dataUrl': dataUrl,
        'addedAt': addedAt,
      };

  factory Document.fromJson(Map<String, dynamic> j) => Document(
        id: j['id'] as String,
        clientId: j['clientId'] as String? ?? '',
        name: j['name'] as String? ?? 'belge.pdf',
        type: j['type'] as String? ?? 'application/pdf',
        size: (j['size'] as num?)?.toInt() ?? 0,
        dataUrl: j['dataUrl'] as String? ?? '',
        addedAt: (j['addedAt'] as num?)?.toDouble() ?? 0,
      );
}
