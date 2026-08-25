import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// MindTrack ortak Firebase projesi.
/// Değerler son çalışan APK içindeki Firebase yapılandırmasından alınmıştır.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        return android;
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCU9BqIw4oNBkWw4N1SrkcejpUBe_kpvQ0',
    appId: '1:47737643506:android:badb4ef2dce5e9c7a74b6b',
    messagingSenderId: '47737643506',
    projectId: 'mindtrack-sync-2026-6bf9c',
    storageBucket: 'mindtrack-sync-2026-6bf9c.firebasestorage.app',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCU9BqIw4oNBkWw4N1SrkcejpUBe_kpvQ0',
    appId: '1:47737643506:web:badb4ef2dce5e9c7a74b6b',
    messagingSenderId: '47737643506',
    projectId: 'mindtrack-sync-2026-6bf9c',
    authDomain: 'mindtrack-sync-2026-6bf9c.firebaseapp.com',
    storageBucket: 'mindtrack-sync-2026-6bf9c.firebasestorage.app',
  );

  static const FirebaseOptions ios = android;
}
