// Web'e özel metin dosyası indirme.
// ignore_for_file: avoid_web_libraries_in_flutter, deprecated_member_use
import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;

/// Metin içeriğini tarayıcı indirme akışıyla kaydeder.
Future<bool> saveTextFile(String filename, String content, String mime) async {
  final bytes = utf8.encode(content);
  final blob = html.Blob(<Object>[bytes], mime);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)..download = filename;
  html.document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  unawaited(Future.delayed(const Duration(seconds: 3),
      () => html.Url.revokeObjectUrl(url)));
  return true;
}
