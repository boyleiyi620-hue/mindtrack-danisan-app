import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// Kırmızı hata kutusu — form hatalarını gösterir.
class ErrorBox extends StatelessWidget {
  const ErrorBox({super.key, this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    if (message == null || message!.isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.dangerSoft,
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        border: Border.all(color: AppColors.danger.withValues(alpha: .25)),
      ),
      child: Row(
        children: [
          const Icon(Icons.error_outline, color: AppColors.danger, size: 18),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message!,
              style: TextStyle(
                color: AppColors.danger.withValues(alpha: .9),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
