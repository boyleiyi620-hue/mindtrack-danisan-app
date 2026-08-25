import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import 'pdf_platform.dart';

/// Tam ekran PDF görüntüleyici — web'de satır içi, diğerlerinde dışarıda açma.
class PdfViewerScreen extends StatelessWidget {
  const PdfViewerScreen({super.key, required this.name, required this.bytes});

  final String name;
  final Uint8List bytes;

  @override
  Widget build(BuildContext context) {
    final inline = pdfInlineSupported;
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.picture_as_pdf_outlined,
                size: 20, color: AppColors.danger),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        actions: [
          if (inline) ...[
            IconButton(
              tooltip: 'Yeni Sekmede Aç',
              onPressed: () => pdfOpenExternal(bytes, name),
              icon: const Icon(Icons.open_in_new),
            ),
            IconButton(
              tooltip: 'İndir',
              onPressed: () => pdfDownload(bytes, name),
              icon: const Icon(Icons.download_outlined),
            ),
          ],
          const SizedBox(width: 4),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: PdfPlatformView(bytes: bytes, name: name)),
          if (inline)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: const BoxDecoration(
                color: AppColors.card,
                border: Border(top: BorderSide(color: AppColors.border)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.lock_outline, size: 13, color: AppColors.muted),
                  SizedBox(width: 6),
                  Text(
                    'Bu PDF yalnızca bu cihazda görüntülenir.',
                    style: TextStyle(
                        fontSize: 12, color: AppColors.muted),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
