import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yominexus/core/constants.dart';

extension GetThemeData on SharedPreferencesWithCache {
  ThemeData getThemeData() {
    final String? themeData = getString(Constants.themeDataKey);
    final String? themeMode = getString(Constants.themeModeKey);

    if (themeData == null || themeMode == null) return ThemeData.light();

    switch ([themeData, themeMode]) {
      case ['CloudflareColorScheme', 'dark']:
        return Constants.cloudflareColorSchemeDark;
      default:
        return ThemeData.light();
    }
  }
}
