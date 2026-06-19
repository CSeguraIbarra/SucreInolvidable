import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('es');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!['es', 'en'].contains(locale.languageCode)) return;
    _locale = locale;
    notifyListeners(); // ⚡ notifica a toda la app
  }

  void clearLocale() {
    _locale = const Locale('es');
    notifyListeners();
  }
}
