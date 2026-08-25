import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

final Random _rng = Random.secure();

/// Güvenli rastgele hex üretir (varsayılan 16 bayt).
String randomHex([int bytes = 16]) {
  return List.generate(
      bytes, (_) => _rng.nextInt(256).toRadixString(16).padLeft(2, '0')).join();
}

String sha256Hex(String input) =>
    sha256.convert(utf8.encode(input)).toString();

/// Şifreyi tuz ile tek yönlü özetler (web sürümüyle uyumlu).
String hashPassword(String password, String salt) =>
    sha256Hex('$salt::$password');

/// PIN doğrulama; pinHash yoksa false.
bool checkPin(String pin, String? pinHash, String salt) {
  if (pinHash == null || pinHash.isEmpty) return false;
  return hashPassword(pin, salt) == pinHash;
}

bool isEmailValid(String email) =>
    RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]{2,}$').hasMatch(email.trim());
