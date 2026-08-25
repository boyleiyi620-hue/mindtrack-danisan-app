// Web dışı platformlar için PDF görüntüleme yedeği.
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/app_theme.dart';

/// Web dışı cihazlarda satır içi önizleme yerine dışarıda açma önerisi.
class PdfPlatformView extends StatelessWidget {
  const PdfPlatformView({super.key, required this.bytes, required this.name});

  final Uint8List bytes;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: AppColors.dangerSoft,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.picture_as_pdf_outlined,
                  size: 34, color: AppColors.danger),
            ),
            const SizedBox(height: 16),
            const Text(
              'Bu cihazda satır içi PDF önizlemesi desteklenmiyor.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.text),
            ),
            const SizedBox(height: 6),
            Text(
              '"Dışarıda Aç" ile PDF içeriğini cihazınızdaki PDF uygulamasıyla görüntüleyebilirsiniz.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 13, color: AppColors.muted),
            ),
            const SizedBox(height: 18),
            FilledButton.icon(
              onPressed: () => pdfOpenExternal(bytes, name),
              icon: const Icon(Icons.open_in_new, size: 17),
              label: const Text('Dışarıda Aç',
                  style: TextStyle()),
            ),
          ],
        ),
      ),
    );
  }
}

/// Bu platformda satır içi görüntüleme desteklenmiyor.
bool get pdfInlineSupported => false;

/// PDF'i cihazın PDF uygulamasıyla açmayı dener.
Future<bool> pdfOpenExternal(Uint8List bytes, String name) async {
  try {
    final uri = Uri.dataFromBytes(bytes, mimeType: 'application/pdf');
    return await launchUrl(uri, mode: LaunchMode.externalApplication);
  } catch (_) {
    return false;
  }
}

/// PDF'i indirir (data URI ile dış uygulamaya yönlendirir).
Future<bool> pdfDownload(Uint8List bytes, String name) async {
  return pdfOpenExternal(bytes, name);
}
