import 'dart:convert';
import 'dart:typed_data';

/// Tarih/saat biçimlendirme ve kategori etiketleri (Türkçe).
const _months = ['Ocak', 'Şubat', 'Mart', 'Nisan', 'Mayıs', 'Haziran', 'Temmuz', 'Ağustos', 'Eylül', 'Ekim', 'Kasım', 'Aralık'];

const apptTypes = {
  'ilk_görüşme': 'İlk Görüşme',
  'takip': 'Takip Seansı',
  'online': 'Online Seans',
  'değerlendirme': 'Değerlendirme',
  'aile': 'Aile / Çift',
  'telefon': 'Telefon Görüşmesi',
  'intake': 'İlk Görüşme',
  'therapy': 'Terapi Seansı',
  'assessment': 'Değerlendirme',
  'followup': 'Takip Seansı',
  'other': 'Diğer',
};

const apptStatusLabels = {
  'planned': 'Planlandı',
  'done': 'Tamamlandı',
  'cancelled': 'İptal',
  'noshow': 'Gelmedi',
};

const priorityLabels = {
  'low': 'Düşük',
  'medium': 'Orta',
  'high': 'Yüksek',
};

String pad2(int n) => n.toString().padLeft(2, '0');

/// Bayt boyutunu okunabilir metne çevirir (B / KB / MB).
String fmtBytes(int b) {
  if (b < 1024) return '$b B';
  if (b < 1024 * 1024) return '${(b / 1024).toStringAsFixed(1)} KB';
  return '${(b / (1024 * 1024)).toStringAsFixed(2)} MB';
}

/// 'data:...;base64,...' veya ham base64'ten baytları çözer.
/// Geçersiz veride boş liste döner.
Uint8List bytesFromDataUrl(String dataUrl) {
  final idx = dataUrl.indexOf(',');
  final b64 = idx >= 0 ? dataUrl.substring(idx + 1) : dataUrl;
  try {
    return base64Decode(b64);
  } catch (_) {
    return Uint8List(0);
  }
}

/// 'yyyy-MM' + 'gün' kombinasyonları için yardımcılar.
String monthKey(int year, int month) =>
    '${year.toString().padLeft(4, '0')}-${pad2(month)}';

String monthName(int year, int month) =>
    '${_months[month - 1]} $year';

int daysInMonth(int year, int month) => DateTime(year, month + 1, 0).day;

String addDaysIso(String iso, int days) {
  final d = DateTime.parse(iso.length >= 10 ? iso.substring(0, 10) : iso);
  final n = d.add(Duration(days: days));
  return isoDate(n);
}

String mondayOfIso(String iso) {
  final d = DateTime.parse(iso.length >= 10 ? iso.substring(0, 10) : iso);
  final off = (d.weekday) % 7; // weekday: 1=Pzt..7=Paz -> Pzt=0
  final m = d.subtract(Duration(days: off));
  return isoDate(m);
}

bool isValidHm(String t) {
  final m = RegExp(r'^([01]?\d|2[0-3]):[0-5]\d$');
  return m.hasMatch(t);
}

String isoDate(DateTime d) => '${d.year.toString().padLeft(4, '0')}-${pad2(d.month)}-${pad2(d.day)}';

String todayIso() => isoDate(DateTime.now());

String fmtDate(DateTime d, {bool long = false}) {
  if (long) return '${d.day} ${_months[d.month - 1]} ${d.year}';
  return '${pad2(d.day)}.${pad2(d.month)}.${d.year}';
}

String fmtTime(String hhmm) {
  if (hhmm.isEmpty) return '-';
  return hhmm.length >= 5 ? hhmm.substring(0, 5) : hhmm;
}

String fmtDateTime(num ms) {
  if (ms <= 0) return '-';
  final d = DateTime.fromMillisecondsSinceEpoch(ms.toInt());
  return '${fmtDate(d)} ${pad2(d.hour)}:${pad2(d.minute)}';
}

String timeAgo(num ms) {
  if (ms <= 0) return 'henüz alınmamış';
  final diff = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(ms.toInt()));
  if (diff.inMinutes < 1) return 'az önce';
  if (diff.inHours < 1) return '${diff.inMinutes} dk önce';
  if (diff.inDays < 1) return '${diff.inHours} saat önce';
  if (diff.inDays < 30) return '${diff.inDays} gün önce';
  return fmtDate(DateTime.fromMillisecondsSinceEpoch(ms.toInt()));
}

String apptTypeLabel(String t) => apptTypes[t] ?? (t.isEmpty ? '-' : t);
String apptStatusLabel(String s) => apptStatusLabels[s] ?? (s.isEmpty ? '-' : s);
String priorityLabel(String p) => priorityLabels[p] ?? (p.isEmpty ? '-' : p);

const clientStatusLabels = {
  'active': 'Aktif',
  'paused': 'Tedaviye Ara Verildi',
  'archived': 'Arşiv',
};

const goalStatusLabels = {
  'pending': 'Bekliyor',
  'in_progress': 'Devam Ediyor',
  'achieved': 'Tamamlandı',
  'dropped': 'Bırakıldı',
};

const goalCategoryLabels = {
  'short': 'Kısa Vade',
  'long': 'Uzun Vade',
};

String clientStatusLabel(String s) => clientStatusLabels[s] ?? (s.isEmpty ? '-' : s);
String goalStatusLabel(String s) => goalStatusLabels[s] ?? (s.isEmpty ? '-' : s);
String goalCategoryLabel(String c) => goalCategoryLabels[c] ?? (c.isEmpty ? '-' : c);

/// 'yyyy-MM-dd' ya da 'yyyy-MM-ddT...' biçiminden yaş hesaplar.
int? ageFromBirth(String birthDate) {
  if (birthDate.isEmpty) return null;
  final d = DateTime.tryParse(birthDate.length >= 10 ? birthDate.substring(0, 10) : birthDate);
  if (d == null) return null;
  final now = DateTime.now();
  var age = now.year - d.year;
  if (now.month < d.month || (now.month == d.month && now.day < d.day)) age--;
  return age >= 0 ? age : null;
}

/// ISO tarihin kısa 'dd.MM.yyyy' gösterimi (null güvenli).
String fmtIsoDate(String iso) {
  if (iso.isEmpty) return '-';
  final d = DateTime.tryParse(iso.length >= 10 ? iso.substring(0, 10) : iso);
  return d == null ? iso : fmtDate(d);
}

String initials(String name) {
  final parts = name.split(RegExp(r'\s+')).where((s) => s.isNotEmpty).toList();
  if (parts.isEmpty) return '?';
  if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
  return (parts.first.substring(0, 1) + parts.last.substring(0, 1)).toUpperCase();
}
