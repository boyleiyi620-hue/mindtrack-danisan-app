// PDF görüntüleme platform soyutlaması.
// Web'de tarayıcının yerleşik PDF görüntüleyicisi (iframe) kullanılır,
// diğer platformlarda dışarıda açma seçeneği sunan bir yedek gösterilir.
library;

export 'pdf_platform_stub.dart'
    if (dart.library.js_interop) 'pdf_platform_web.dart';
