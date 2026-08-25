# MindTrack Web Uygulaması

Bu arşiv, Firebase Hosting’de yayınlanan MindTrack psikolog Web uygulamasının kaynaklarını ve üretim çıktısını içerir.

## İçerik

- `lib/`: Flutter Web uygulamasının Dart kaynakları
- `web/`: Web platformu yapılandırması
- `build/web/`: Firebase Hosting’e yayınlanan üretim çıktısı
- `firebase_options.dart`: Firebase Web yapılandırması
- `firebase.json`: Hosting ve Firestore yayın yapılandırması
- `firestore.rules`: UID tabanlı Firestore güvenlik kuralları
- `pubspec.yaml` ve `pubspec.lock`: Flutter bağımlılıkları

## Canlı adres

https://mindtrack-sync-2026-6bf9c.web.app/

## Yeniden derleme

Flutter Stable kurulu ortamda proje klasöründe `flutter pub get` ve ardından `flutter build web --release` çalıştırılabilir. Oluşan `build/web` klasörü Firebase Hosting için yayın klasörüdür.

## Firebase yayınlama

Firebase CLI ile `firebase deploy --project mindtrack-sync-2026-6bf9c --only hosting,firestore` komutu kullanılabilir. Yayınlama hesabının Firebase projesinde gerekli yetkilere sahip olması gerekir.

## Senkronizasyon

Web ve psikolog Android uygulaması aynı Firebase projesini ve aynı kullanıcı Firebase UID’sini kullanır. Psikolog verileri `psychologists/{Firebase UID}/state/appData` belgesinde tutulur; Firestore yazma kuyruğu art arda gelen değişikliklerin uzak kayda ulaşmasını sağlar.

## Güvenlik

Kullanıcı şifreleri arşive dahil edilmemiştir. Firestore erişimi `firestore.rules` dosyasındaki UID tabanlı kurallarla sınırlandırılır.
