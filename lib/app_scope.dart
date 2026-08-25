import 'package:flutter/widgets.dart';

import 'data/data_store.dart';

/// Tüm ekranların veri deposuna erişmesini sağlar.
class AppScope extends InheritedNotifier<DataStore> {
  const AppScope({super.key, required DataStore super.notifier, required super.child});

  static DataStore of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<AppScope>();
    assert(scope != null, 'AppScope bulunamadı — ağacın üstünde AppScope olmalı.');
    return scope!.notifier!;
  }
}
