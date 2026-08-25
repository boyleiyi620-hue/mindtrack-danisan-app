==============================================================
  MindTrack — Windows PC'de Flutter ile APK Derleme Rehberi
  (Adım Adım · Tamamen Çalışır Yol)
==============================================================

Bu rehberde, psikolog uygulamasının Flutter kaynak kodunu Windows
bilgisayarında derleyip telefonuna KURULUM dosyası olarak APK
çıkaracaksın. Tüm adımları sırayla uygula.

----------------------------------------------------------------
BÖLÜM 0 — ELİNDEKİ DOSYALAR
----------------------------------------------------------------
- MindTrack-FLUTTER-KAYNAK.zip  -> Flutter kaynak kodu
  ZIP'i açınca:  flutter\mindtrack\  klasörü çıkacak.
  Bu klasör projedir; aşağıda hep bu klasörü kullanacağız.
  Örnek konum:  C:\src\mindtrack\flutter\mindtrack
  (Yolun içinde TÜRKÇE KARAKTER VE BOŞLUK OLMASIN: "Yeni klasör" değil,
   "mindtrack" gibi basit bir yol kullan.)

----------------------------------------------------------------
BÖLÜM 1 — BİLGİSAYARA FLUTTER'İ KUR
----------------------------------------------------------------
1) Flutter SDK indir:
   - https://docs.flutter.dev/get-started/install/windows adresini aç
   - "Flutter SDK" zip dosyasını indir (büyüktür, yaklaşık 1 GB açılışı)
   - ZIP'i aç ve klasörü C:\src\flutter olarak taşı (örnek)
     Yani:  C:\src\flutter\bin\flutter.bat  şeklinde görünsün.

2) Flutter'i Windows'a tanıt (PATH):
   - Windows arama çubuğuna: "ortam değişkenlerini düzenle" yaz, aç
   - "Ortam Değişkenleri..." butonuna bas
   - Üstteki "Kullanıcı değişkenleri"nden "Path"i seç -> "Düzenle"
   - "Yeni" -> şunu ekle:  C:\src\flutter\bin   -> Tamam
   - Yeni bir Komut İstemi (cmd) penceresi AÇ (eski pencerelerde geçerli olmaz)
   - `flutter --version` yaz. Sürüm bilgisi gelirse kurulum tamam.

3) Android Studio kur:
   - https://developer.android.com/studio adresinden "Android Studio" indir ve kur
   - Kurulum sihirbazında "Android SDK", "Android SDK Command-line Tools",
     "Android SDK Platform-Tools", "Android SDK Platform" seçenekleri
     işaretli gelsin (varsayılan işaretlidir)
   - İlk açılışta "SDK bileşenlerini indir" diye sorarsa kabul et.
   - Android Studio'yu ilk kez açıp kapat (SDK'yı hazırlasın diye).

4) Kontrol:
   - cmd'de:  `flutter doctor`
   - Android Studio ve Android SDK satırlarında "✓" işareti görene kadar
     düzeltmeleri yap:
       - Eksikse:  `flutter doctor --android-licenses`  çalıştır,
         karşısına çıkan her lisans için "y" yaz ve Enter'a bas.
   - "✓" işaretleri varsa devam et.

----------------------------------------------------------------
BÖLÜM 2 — PROJEYİ AÇ VE HAZIRLA
----------------------------------------------------------------
5) ZIP'i aç. Şu klasörü bul:  flutter\mindtrack
   - Örnek:  C:\src\mindtrack\flutter\mindtrack
   - İçinde pubspec.yaml dosyası olduğundan emin ol.

6) O klasörde komut penceresi aç:
   - Windows Gezgini'nde klasöre gir
   - Üstteki adres çubuğuna "cmd" yaz, Enter'a bas
   - (veya klasörün içinde Shift + sağ tık -> "Terminali burada aç")

7) Paketleri indir:
   - Şu komutu yaz:          flutter pub get
   - "Got dependencies!" yazarsa tamam. (İnternet gerekir)

8) Hata kontrolü:
   - Şu komutu yaz:          flutter analyze
   - "No issues found!" görmelisin. Eğer uyarılar çıkarsa devam edebilirsin;
     "error" satırı varsa bana ilet.

----------------------------------------------------------------
BÖLÜM 3 — APK DERLE (EN ÖNEMLİ ADIM)
----------------------------------------------------------------
9) Komut:
   - Şu komutu yaz:          flutter build apk --release
   - İLK ÇALIŞTIRMADA GRADLE VE MOTOR DOSYALARI İNER; 5-20 DK SÜREBİLİR.
     İnternet açık olsun, pencereyi kapatma, beklet.
   - En sonda şuna benzer bir satır çıkmalı:
     "✓ Built build\app\outputs\flutter-apk\app-release.apk"

10) APK'nın yeri:
   -  flutter\mindtrack\build\app\outputs\flutter-apk\app-release.apk
   - Bu dosya telefona kuracağın kurulum dosyasıdır (~50-90 MB olur,
     internetten çekilen normal Flutter motoruyla).

    İstersen daha küçük dosya (isteğe bağlı):
    - flutter build apk --release --split-per-abi
    - Çıkışta 3 ayrı APK olur; telefonların çoğu arm64-v8a kullanır:
      app-arm64-v8a-release.apk  (bunu kur)

----------------------------------------------------------------
BÖLÜM 4 — TELEFONA KURULUM (İKİ YOLDAN BİRİ)
----------------------------------------------------------------
YOL A — USB KABLO İLE (EN GARANTİLİ, İZİN SORDURMAZ)
----------------------------------------------------
11) Telefonda Geliştirici seçeneklerini aç:
    - Ayarlar -> Telefon hakkında -> "Derleme numarası"na 7 KEZ dokun
    - "Geliştirici oldunuz" yazısı çıkar
12) Ayarlar -> Sistem -> Geliştirici seçenekleri:
    - "USB hata ayıklama"yı AÇ
13) Telefonu USB kabloyla bilgisayara bağla:
    - Bildirimde "USB ile hata ayıklamaya izin ver?" -> İzin ver
      (her zaman işaretli gelsin)
14) PC'de komut penceresinde yaz:
    - adb devices
    - Telefon "device" olarak listelenmeli. Listelenmezse:
      adb'in yolu: %LOCALAPPDATA%\Android\Sdk\platform-tools
      (Android Studio kurunca adb otomatik gelir; cmd'de adb yoksa
       o klasörü de Path'e ekle)
15) Kurulum komutu:
    - adb install -r "C:\src\mindtrack\flutter\mindtrack\build\app\outputs\flutter-apk\app-release.apk"
    - En sonda "Success" yazarsa KURULDU.
    - Telefon ana ekranında "MindTrack" ikonunu bul ve AÇ.

YOL B — APK'YI TELEFONA TAŞIYIP KUR
-----------------------------------
16) app-release.apk dosyasını telefona taşı:
    - USB ile bağlayıp "Dosya aktarımı" modunu seç, APK'yı
      "İndirilenler" klasörüne kopyala
    - VEYA Google Drive / kendine mesaj ile telefona indir
17) Telefonda: Dosyalar (Files by Google) -> İndirilenler
    -> app-release.apk dosyasına dokun
    - İlk seferde "Bu kaynaktan izin ver" sorarsa: anahtarı AÇ
      (Ayarlar -> Uygulamalar -> Dosyalar -> Bilinmeyen uygulamaları
       yükle -> "Bu kaynağa izin ver")
    - "Yükle" -> kurulunca "Aç"

----------------------------------------------------------------
BÖLÜM 5 — SIK KARŞILAŞILAN SORUNLAR
----------------------------------------------------------------
- "cmdline-tools component is missing":
    Android Studio'yu güncelle / SDK Manager'dan Command-line Tools kur,
    sonra: flutter doctor --android-licenses
- Gradle yavaş veya indirme hatası:
    İnternetin açık olduğundan emin ol; virüs programı/güvenlik duvarı
    engelliyorsa izin ver; sonra tekrar: flutter build apk --release
- "INSTALL_FAILED_USER_RESTRICTED" hatası:
    Telefonda "Bilinmeyen kaynaklar" izni kapalı demektir.
    YOL A (adb) bunu hiç sormaz; YOL B'de ilgili uygulamaya izin ver.
- "App not installed / paket analiz edilemedi":
    APK'yi yeniden derle; telefona kopyaladığın dosyanın bozuk
    olmadığından emin ol.
- Hata mesajlarını bana yazışırsan çözmene yardım ederim.

----------------------------------------------------------------
BÖLÜM 6 — ÖNEMLİ NOTLAR
----------------------------------------------------------------
- Uygulama varsayılan olarak "debug" anahtarıyla imzalıdır.
  Kendi telefonun için sorun değildir.
- Verilerin TAMAMEN telefonda saklanır; internet gerekmez, hesap
  zorunluluğu yoktur, ücret/abonelik yoktur.
- Başka psikologlara dağıtacaksan aynı imza anahtarını kullanman
  gerekir (ileride istenirse kendi keystore'unu oluşturmayı da
  adım adım anlatırım).
==============================================================
