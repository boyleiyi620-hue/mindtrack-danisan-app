# MindTrack Psikolog Uygulaması

Bu arşiv, MindTrack psikolog uygulamasının güncel Flutter kaynak kodlarını içerir.

## İçerik

- `lib/`: Flutter/Dart uygulama kaynakları
- `android/`: Android proje dosyaları ve paket yapılandırması
- `web/`: Web platform yapılandırması
- `firebase_options.dart`: Ortak Firebase proje yapılandırması
- `firestore.rules`: UID tabanlı Firestore güvenlik kuralları
- `firebase.json`: Firebase Hosting ve Firestore yayın yapılandırması
- `build/web/`: Firebase Hosting’e yayınlanan Web çıktısı
- `pubspec.yaml` ve `pubspec.lock`: Flutter bağımlılıkları

## Paket kimliği

Android psikolog uygulaması: `tr.mindtrack.mindtrack`

## Web adresi

https://mindtrack-sync-2026-6bf9c.web.app/

## Derleme

Flutter Stable, Android SDK ve Java 21 ile proje klasöründe `flutter pub get` ardından `flutter build apk --release` veya `flutter build web --release` çalıştırılabilir.

## Güvenlik notu

Kullanıcı şifresi bu arşive dahil edilmemiştir. Firebase istemci yapılandırması uygulamanın çalışması için gerekli proje bilgilerini içerir; Firestore erişimi güvenlik kurallarıyla kullanıcı Firebase UID’sine göre sınırlandırılır.

## Senkronizasyon

Psikolog mobil ve Web sürümleri, aynı Firebase projesinde `psychologists/{Firebase UID}/state/appData` belgesini kullanır. Firestore yazma kuyruğu, art arda yapılan işlemlerin son durumunun uzak veritabanına gönderilmesini sağlar.
