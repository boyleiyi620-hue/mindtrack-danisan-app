// Web'e özel PDF görüntüleme: iframe + blob/data URL.
// ignore_for_file: avoid_web_libraries_in_flutter, deprecated_member_use
import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;
import 'dart:typed_data';
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';

/// Web'de tarayıcının yerleşik PDF okuyucusunu iframe ile gösterir.
class PdfPlatformView extends StatefulWidget {
  const PdfPlatformView({super.key, required this.bytes, required this.name});

  final Uint8List bytes;
  final String name;

  @override
  State<PdfPlatformView> createState() => _PdfPlatformViewState();
}

class _PdfPlatformViewState extends State<PdfPlatformView> {
  String? _viewType;

  @override
  void initState() {
    super.initState();
    _register();
  }

  void _register() {
    final viewType = 'mindtrack-pdf-${DateTime.now().microsecondsSinceEpoch}';
    final dataUrl = 'data:application/pdf;base64,${base64Encode(widget.bytes)}';
    ui_web.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
      final iframe = html.IFrameElement()
        ..src = dataUrl
        ..style.width = '100%'
        ..style.height = '100%'
        ..style.border = 'none'
        ..style.background = '#F8FBFB';
      return iframe;
    });
    _viewType = viewType;
  }

  @override
  Widget build(BuildContext context) {
    final vt = _viewType;
    if (vt == null) return const SizedBox.shrink();
    return HtmlElementView(viewType: vt);
  }
}

/// Bu platformda satır içi görüntüleme destekleniyor mu?
bool get pdfInlineSupported => true;

/// PDF'i yeni sekmede açar (blob URL).
Future<bool> pdfOpenExternal(Uint8List bytes, String name) async {
  final blob = html.Blob(<Object>[bytes], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.window.open(url, '_blank');
  unawaited(Future.delayed(const Duration(minutes: 10),
      () => html.Url.revokeObjectUrl(url)));
  return true;
}

/// PDF'i indirir (tarayıcı indirme akışı).
Future<bool> pdfDownload(Uint8List bytes, String name) async {
  final blob = html.Blob(<Object>[bytes], 'application/pdf');
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)..download = name;
  html.document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  unawaited(Future.delayed(const Duration(seconds: 2),
      () => html.Url.revokeObjectUrl(url)));
  return true;
}
