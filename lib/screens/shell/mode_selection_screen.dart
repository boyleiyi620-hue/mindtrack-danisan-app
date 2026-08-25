import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

enum AppMode { standard, commercial }

class ModeSelectionScreen extends StatelessWidget {
  const ModeSelectionScreen({super.key, required this.onSelected});
  final void Function(AppMode) onSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.dashboard_customize_outlined,
                  size: 64,
                  color: AppColors.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  'MindTrack',
                  style: Theme.of(context).textTheme.headlineMedium
                      ?.copyWith(fontWeight: FontWeight.w800),
                ),
                const Text(
                  'Lütfen devam etmek istediğiniz oturum modunu seçin.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                _modeCard(
                  context,
                  mode: AppMode.standard,
                  title: 'Standart Oturum',
                  desc: 'Mevcut danışan, randevu ve değerlendirme özellikleri.',
                  icon: Icons.person_outline,
                  color: AppColors.primary,
                ),
                const SizedBox(height: 16),
                _modeCard(
                  context,
                  mode: AppMode.commercial,
                  title: 'Ticari Oturum',
                  desc: 'Muhasebe, ödeme takibi ve kazanç raporları.',
                  icon: Icons.account_balance_wallet_outlined,
                  color: Colors.amber.shade800,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _modeCard(
    BuildContext context, {
    required AppMode mode,
    required String title,
    required String desc,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => onSelected(mode),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: .1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      desc,
                      style: const TextStyle(
                        fontSize: 13,
                        color: AppColors.muted,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.muted),
            ],
          ),
        ),
      ),
    );
  }
}
