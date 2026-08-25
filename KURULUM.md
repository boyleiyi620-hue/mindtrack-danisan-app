# MindTrack — Kurulum ve Kullanım Rehberi

MindTrack, psikologlar için **tamamen yerel** çalışan bir klinik takip uygulamasıdır.
Tüm verileriniz yalnızca kullandığınız cihazda saklanır; hiçbir sunucuya gönderilmez.

---

## 1) Hızlı Başlangıç (Web — önerilen)

ZIP içindeki `mindtrack/build/web` klasörü hazır bir web uygulamasıdır.

### Yöntem A: Herhangi bir statik sunucuyla
```bash
cd mindtrack/build/web
python3 -m http.server 8080
```
Tarayıcıda `http://localhost:8080` adresini açın. (Android telefonunuzda
`adb reverse tcp:8080 tcp:8080` ile veya aynı ağda IP ile de açabilirsiniz.)

### Yöntem B: index.html'i doğrudan açmak
`build/web/index.html` dosyasına çift tıklayabilirsiniz; ancak bazı tarayıcılar
dosya protokolünde yerel depolamayı kısıtlayabilir. Güvenli yol Yöntem A'dır.

---

## 2) Android APK (mobil — kaynak koddan derleme)

Bu çalışma ortamında Android SDK bulunmadığı için APK sizin bilgisayarınızda
derlenir. Flutter SDK yüklü bir makinede:

```bash
# Flutter'ın PATH'te olduğundan emin olun (flutter --version)
cd mindtrack
flutter pub get
flutter build apk --release
```

Çıktı: `build/app/outputs/flutter-apk/app-release.apk`
Bu APK'yı telefona kopyalayıp kurun.

Gerekli Flutter sürümü: **3.38 veya üzeri** (proje Dart 3.13 ile yazıldı).

---

## 3) Uygulama Özellikleri

- **Giriş / Kayıt**: Yerel hesap (ad, e-posta, şifre). Şifreler SHA-256 tuzlu özetle saklanır.
- **Genel Bakış**: Bugünkü randevular, risk uyarıları, istatistikler, yaklaşan randevular, açık görevler.
- **Formlar**: Değerlendirme formu oluşturma/düzenleme/doldurma, otomatik puanlama ve risk algılama.
- **Danışanlar**: Danışan kartları, SOAP seans notları, tedavi planı hedefleri, güvenlik planı ve acil hatlar.
- **Randevular**: Aylık takvim, hafta görünümü, tekrarlı randevular, geçmiş tarihe randevu engeli, çakışma uyarısı.
- **Görevler**: Açık/gecikmiş görev takibi, öncelik ve son tarih yönetimi.
- **Sonuçlar**: Form analizleri, puan trendi grafiği, risk işaretli değerlendirmeler, aylık akış.
- **PDF Kütüphanesi**: Kategoriler, PDF yükleme, uygulama içinde görüntüleme, yeni sekmede açma ve indirme.
- **Ayarlar**: Profil, şifre değiştirme, PIN kilidi, JSON yedek/geri yükleme, CSV dışa aktarım, KVKK.

---

## 4) Veri ve Gizlilik

- Veriler tarayıcıda **localStorage** (web) veya cihaz kalıcı deposunda (mobil) saklanır.
- PDF dosyaları için tek dosya sınırı **2 MB**, toplam depolama önerisi **~5 MB**'dır.
- **Düzenli yedek alın**: Ayarlar → Yedekleme → "Tam Yedek (JSON)". Tarayıcı verileri
  temizlenirse yedek olmadan veriler kaybolabilir.
- Bu uygulama tıbbi tanı koymaz; mesleki kararları destekleyen bir kayıt aracıdır.

---

## 5) Testler (geliştiriciler için)

```bash
cd mindtrack
flutter test      # 19 widget/akış testi
flutter analyze   # statik analiz
```

Sürüm 1.0 — Flutter (Dart 3.13)
