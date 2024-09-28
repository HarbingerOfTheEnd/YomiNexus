import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yominexus/core/constants.dart';
import 'package:yominexus/core/extensions.dart';
part 'theme_provider.g.dart';

@riverpod
class YominexusTheme extends _$YominexusTheme {
  (ThemeData?, ThemeData?) _getTheme() {
    final (lightColorScheme, darkColorScheme) =
        Constants.sharedPreferences.getColorScheme();

    final ThemeData? lightTheme = lightColorScheme != null
        ? ThemeData.from(colorScheme: lightColorScheme)
        : null;

    final ThemeData? darkTheme = darkColorScheme != null
        ? ThemeData.from(colorScheme: darkColorScheme)
        : null;

    return (lightTheme, darkTheme);
  }

  @override
  (ThemeData?, ThemeData?) build() {
    return _getTheme();
  }

  Future<void> setTheme(ColorScheme colorscheme) async {
    Constants.sharedPreferences.setColorScheme(colorscheme);

    state = _getTheme();
  }
}
