// Metin dosyası kaydetme platform soyutlaması.
// Web'de tarayıcı indirme akışı, diğer platformlarda dosya kaydetme iletişim kutusu.
library;

export 'data_io_stub.dart'
    if (dart.library.js_interop) 'data_io_web.dart';
