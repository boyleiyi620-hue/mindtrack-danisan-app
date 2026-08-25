/// Finansal işlem kaydı — Gelir veya Gider.
class Transaction {
  final String id;
  final String? clientId; // Gelir ise danışan ID'si
  final double amount;
  final String date; // ISO YYYY-MM-DD
  final String type; // 'income' veya 'expense'
  final String category; // Seans, Test, Kira, Maaş, Vergi vb.
  final String notes;
  final double taxRate; // Vergi oranı (%)

  Transaction({
    required this.id,
    this.clientId,
    required this.amount,
    required this.date,
    required this.type,
    required this.category,
    this.notes = '',
    this.taxRate = 0.0,
  });

  double get taxAmount => (amount * taxRate) / 100;
  double get netAmount => type == 'income' ? amount - taxAmount : amount;

  factory Transaction.fromJson(Map<String, dynamic> j) => Transaction(
    id: j['id'] as String,
    clientId: j['clientId'] as String?,
    amount: (j['amount'] as num).toDouble(),
    date: j['date'] as String,
    type: j['type'] as String? ?? 'income',
    category: j['category'] as String? ?? 'Seans',
    notes: j['notes'] as String? ?? '',
    taxRate: (j['taxRate'] as num?)?.toDouble() ?? 0.0,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'clientId': clientId,
    'amount': amount,
    'date': date,
    'type': type,
    'category': category,
    'notes': notes,
    'taxRate': taxRate,
  };
}

class FinanceGoal {
  final String month; // YYYY-MM
  final double target;
  final String notes;

  FinanceGoal({
    required this.month,
    required this.target,
    this.notes = '',
  });

  factory FinanceGoal.fromJson(Map<String, dynamic> j) => FinanceGoal(
    month: j['month'] as String,
    target: (j['target'] as num).toDouble(),
    notes: j['notes'] as String? ?? '',
  );

  Map<String, dynamic> toJson() => {
    'month': month,
    'target': target,
    'notes': notes,
  };
}

/// Eğitim ve Gelişim kaydı — süpervizyon veya sertifika.
class Training {
  final String id;
  final String title;
  final String date;
  final String type; // Süpervizyon, Eğitim, Sertifika
  final String institution;
  final String notes;

  Training({
    required this.id,
    required this.title,
    required this.date,
    this.type = 'Eğitim',
    this.institution = '',
    this.notes = '',
  });

  factory Training.fromJson(Map<String, dynamic> j) => Training(
    id: j['id'] as String,
    title: j['title'] as String,
    date: j['date'] as String,
    type: j['type'] as String? ?? 'Eğitim',
    institution: j['institution'] as String? ?? '',
    notes: j['notes'] as String? ?? '',
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'date': date,
    'type': type,
    'institution': institution,
    'notes': notes,
  };
}
