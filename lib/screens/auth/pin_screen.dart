import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/account_store.dart';
import '../../data/crypto_utils.dart';
import '../../theme/app_theme.dart';

/// PIN kilidi ekranı — kilitliyken tüm uygulamanın yerini alır.
class PinScreen extends StatefulWidget {
  const PinScreen({super.key, required this.store, required this.onUnlock});

  final AccountStore store;
  final VoidCallback onUnlock;

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  final _pin = TextEditingController();
  String? _error;

  @override
  void dispose() {
    _pin.dispose();
    super.dispose();
  }

  void _tryUnlock() {
    final u = widget.store.current;
    if (u == null) {
      widget.store.clearSession();
      Navigator.of(context)
          .pushNamedAndRemoveUntil('/auth', (r) => false);
      return;
    }
    if (checkPin(_pin.text.trim(), u.pinHash, u.salt)) {
      widget.store.setLocked(false);
      widget.onUnlock();
    } else {
      setState(() => _error = 'PIN hatalı. Tekrar deneyin.');
      _pin.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.primarySoft,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Icon(Icons.lock_outline,
                      color: AppColors.primary, size: 30),
                ),
                const SizedBox(height: 16),
                const Text(
                  'MindTrack Kilitli',
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w800,
                      color: AppColors.text),
                ),
                const SizedBox(height: 6),
                Text(
                  'Devam etmek için PIN\'inizi girin.',
                  style: TextStyle(
                      fontSize: 13.5, color: AppColors.muted),
                ),
                const SizedBox(height: 22),
                TextField(
                  controller: _pin,
                  obscureText: true,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    _DigitsOnlyFormatter(),
                  ],
                  maxLength: 6,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 22, letterSpacing: 10),
                  decoration: InputDecoration(
                    counterText: '',
                    hintText: '••••',
                    hintStyle:
                        TextStyle(color: AppColors.muted.withValues(alpha: .5)),
                  ),
                  onSubmitted: (_) => _tryUnlock(),
                ),
                const SizedBox(height: 10),
                if (_error != null)
                  Text(
                    _error!,
                    style: const TextStyle(
                        fontSize: 13,
                        color: AppColors.danger),
                  ),
                const SizedBox(height: 14),
                FilledButton(
                  onPressed: _tryUnlock,
                  child: const Text('Aç',
                      style: TextStyle(
                          fontSize: 15)),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    widget.store.clearSession();
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/auth', (r) => false);
                  },
                  child: const Text('Çıkış Yap',
                      style: TextStyle()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DigitsOnlyFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return newValue.text.isEmpty
        ? newValue
        : newValue.copyWith(text: newValue.text.replaceAll(RegExp('[^0-9]'), ''));
  }
}
