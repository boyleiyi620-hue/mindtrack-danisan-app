import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/crypto_utils.dart';
import '../../models/user_account.dart';
import '../../theme/app_theme.dart';

/// PIN kilidi kurma / kaldırma penceresi.
/// `onChanged` hesap kaydedildiğinde, `onLockRequest` kilit istendiğinde çağrılır.
class PinSetupDialog extends StatefulWidget {
  const PinSetupDialog({
    super.key,
    required this.account,
    required this.onChanged,
    this.onLockRequest,
  });

  final UserAccount account;
  final VoidCallback onChanged;
  final VoidCallback? onLockRequest;

  @override
  State<PinSetupDialog> createState() => _PinSetupDialogState();

  static Future<void> show(BuildContext context, {
    required UserAccount account,
    required VoidCallback onChanged,
    VoidCallback? onLockRequest,
  }) {
    return showDialog<void>(
      context: context,
      builder: (_) => PinSetupDialog(
        account: account,
        onChanged: onChanged,
        onLockRequest: onLockRequest,
      ),
    );
  }
}

class _PinSetupDialogState extends State<PinSetupDialog> {
  final _pin = TextEditingController();
  int _timeout = 5;
  String? _error;

  @override
  void dispose() {
    _pin.dispose();
    super.dispose();
  }

  void _save() {
    final pin = _pin.text.trim();
    if (!RegExp(r'^\d{4,6}$').hasMatch(pin)) {
      setState(() => _error = 'PIN 4-6 haneli olmalıdır.');
      return;
    }
    widget.account.pinHash = hashPassword(pin, widget.account.salt);
    widget.account.lockTimeout = _timeout;
    widget.onChanged();
    Navigator.of(context).pop();
  }

  void _disable() {
    widget.account.pinHash = null;
    widget.account.lockTimeout = 0;
    widget.onChanged();
    Navigator.of(context).pop();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Uygulama kilidi kapatıldı.', style: TextStyle())));
  }

  @override
  Widget build(BuildContext context) {
    final hasPin = widget.account.hasPin;
    return AlertDialog(
      title: Row(
        children: [
          const Icon(Icons.shield_outlined, color: AppColors.primaryDark, size: 22),
          const SizedBox(width: 10),
          const Text('Uygulama Kilidi (PIN)',
              style: TextStyle(fontSize: 17)),
        ],
      ),
      content: SizedBox(
        width: 380,
        child: hasPin ? _statusView() : _setupView(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Vazgeç', style: TextStyle()),
        ),
      ],
    );
  }

  Widget _statusView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.check_circle, size: 18, color: AppColors.success),
            const SizedBox(width: 8),
            Text('PIN aktif — ${widget.account.lockTimeout} dk otomatik kilit',
                style: const TextStyle(
                    fontSize: 14, color: AppColors.text2)),
          ],
        ),
        const SizedBox(height: 18),
        Row(
          children: [
            FilledButton.icon(
              onPressed: () {
                Navigator.of(context).pop();
                widget.onLockRequest?.call();
              },
              icon: const Icon(Icons.lock, size: 17),
              label: const Text('Şimdi Kilitle', style: TextStyle()),
            ),
            const SizedBox(width: 12),
            TextButton(
              onPressed: _disable,
              child: const Text('PIN\'i Kaldır', style: TextStyle()),
            ),
          ],
        ),
      ],
    );
  }

  Widget _setupView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Belirlenen süre işlem yapılmazsa veya uygulama arka plana alınırsa otomatik kilitlenir.',
          style: TextStyle(fontSize: 13, color: AppColors.muted, height: 1.5),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _pin,
          obscureText: true,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6),
          ],
          style: const TextStyle( letterSpacing: 6),
          decoration: InputDecoration(labelText: 'PIN (4-6 hane)', hintText: '••••'),
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<int>(
          initialValue: _timeout,
          decoration: const InputDecoration(labelText: 'Otomatik kilit süresi'),
          items: const [
            DropdownMenuItem(value: 1, child: Text('1 dakika', style: TextStyle())),
            DropdownMenuItem(value: 5, child: Text('5 dakika', style: TextStyle())),
            DropdownMenuItem(value: 15, child: Text('15 dakika', style: TextStyle())),
            DropdownMenuItem(value: 30, child: Text('30 dakika', style: TextStyle())),
          ],
          onChanged: (v) => setState(() => _timeout = v ?? 5),
        ),
        if (_error != null) ...[
          const SizedBox(height: 8),
          Text(_error!,
              style: const TextStyle(fontSize: 13, color: AppColors.danger)),
        ],
        const SizedBox(height: 16),
        FilledButton(
          onPressed: _save,
          child: const Text('PIN Kilidini Kaydet', style: TextStyle()),
        ),
      ],
    );
  }
}
