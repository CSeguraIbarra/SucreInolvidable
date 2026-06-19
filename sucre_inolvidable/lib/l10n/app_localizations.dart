import 'package:flutter/material.dart';

class AppLocalizations {
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  final Map<String, Map<String, String>> _localizedValues = {
    'es': {
      'appTitle': 'Sucre Inolvidable',
      'places': 'Lugares turísticos',
      'restaurants': 'Restaurantes',
      'changeLanguage': 'Cambiar idioma',
      'spanish': 'Español',
      'english': 'Inglés',
    },
    'en': {
      'appTitle': 'Unforgettable Sucre',
      'places': 'Tourist Places',
      'restaurants': 'Restaurants',
      'changeLanguage': 'Change Language',
      'spanish': 'Spanish',
      'english': 'English',
    },
  };

  late String _locale;

  AppLocalizations(Locale locale) {
    _locale = locale.languageCode;
  }

  Locale get locale => Locale(_locale);
  
  String get appTitle => _localizedValues[_locale]!['appTitle']!;
  String get places => _localizedValues[_locale]!['places']!;
  String get restaurants => _localizedValues[_locale]!['restaurants']!;
  String get changeLanguage => _localizedValues[_locale]!['changeLanguage']!;
  String get spanish => _localizedValues[_locale]!['spanish']!;
  String get english => _localizedValues[_locale]!['english']!;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      ['es', 'en'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}
