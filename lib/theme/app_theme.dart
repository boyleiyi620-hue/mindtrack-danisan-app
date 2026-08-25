import 'package:flutter/material.dart';

/// MindTrack teması — mevcut web uygulamasının renk paletiyle birebir uyumlu.
class AppColors {
  AppColors._();

  static const Color bg = Color(0xFFF8FBFB);
  static const Color bg2 = Color(0xFFEEF6F5);
  static const Color primary = Color(0xFF347F76);
  static const Color primaryStrong = Color(0xFF2C6E66);
  static const Color primaryDark = Color(0xFF254F4A);
  static const Color primarySoft = Color(0x17347F76); // rgba(52,127,118,.09)
  static const Color primarySofter = Color(0x0D347F76); // rgba(52,127,118,.05)
  static const Color accent = Color(0xFF3D6B8A);
  static const Color accentSoft = Color(0x1A3D6B8A);
  static const Color card = Color(0xFFFFFFFF);
  static const Color text = Color(0xFF1D2B29);
  static const Color text2 = Color(0xFF4B5F5C);
  static const Color muted = Color(0xFF7B8F8C);
  static const Color border = Color(0xFFE3EDEB);
  static const Color border2 = Color(0xFFD5E4E1);
  static const Color danger = Color(0xFFD64545);
  static const Color dangerSoft = Color(0xFFFDF0F0);
  static const Color success = Color(0xFF2E8B57);
  static const Color successSoft = Color(0xFFEAF7F0);
  static const Color warning = Color(0xFFC98A1B);
  static const Color warningSoft = Color(0xFFFDF6E8);
  static const Color info = Color(0xFF2F6F9F);
  static const Color infoSoft = Color(0xFFEAF4FB);
}

ThemeData buildAppTheme() {
  final base = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      primary: AppColors.primary,
      surface: AppColors.card,
      error: AppColors.danger,
    ),
    scaffoldBackgroundColor: AppColors.bg,
  );

  return base.copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.card,
      foregroundColor: AppColors.text,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: AppColors.text,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    ),
    cardTheme: const CardThemeData(
      color: AppColors.card,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.radius)),
        side: BorderSide(color: AppColors.border),
      ),
    ),
    dividerColor: AppColors.border,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.bg2.withValues(alpha: .45),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        borderSide: const BorderSide(color: AppColors.border2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        borderSide: const BorderSide(color: AppColors.border2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.4),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusSm),
        borderSide: const BorderSide(color: AppColors.danger),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        minimumSize: const Size(0, 46),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.radiusSm)),
        textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.text2,
        side: const BorderSide(color: AppColors.border2),
        minimumSize: const Size(0, 44),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.radiusSm)),
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.bg2,
      selectedColor: AppColors.primarySoft,
      side: const BorderSide(color: AppColors.border),
      labelStyle: const TextStyle(color: AppColors.text2, fontSize: 13),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.text,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      contentTextStyle: const TextStyle(fontSize: 14, color: Colors.white),
    ),
  );
}

class AppSizes {
  AppSizes._();
  static const double radius = 14;
  static const double radiusSm = 10;
  static const double pageMaxWidth = 1200;
}
