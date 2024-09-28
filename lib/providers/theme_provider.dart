import 'package:flutter/material.dart';
import 'package:yominexus/providers/colorscheme_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_provider.g.dart';

@riverpod
class YominexusTheme extends _$YominexusTheme {
  (ThemeData?, ThemeData?) _getTheme() {
    final (lightColorScheme, darkColorScheme) = ref.watch(
      yominexusColorSchemeProvider,
    );
    final ThemeData? lightTheme = lightColorScheme != null
        ? ThemeData.light(
            useMaterial3: true,
          ).copyWith(
            colorScheme: lightColorScheme,
          )
        : null;
    final ThemeData? darkTheme = darkColorScheme != null
        ? ThemeData.dark(
            useMaterial3: true,
          ).copyWith(
            colorScheme: darkColorScheme,
          )
        : null;

    return (lightTheme, darkTheme);
  }

  ThemeData? get _lightTheme => _getTheme().$1;
  ThemeData? get _darkTheme => _getTheme().$2;

  @override
  (ThemeData?, ThemeData?) build() {
    return (_lightTheme, _darkTheme);
  }

  Future<void> setTheme(ColorScheme colorscheme) async {
    await ref.read(yominexusColorSchemeProvider.notifier).setColorScheme(
          colorscheme,
        );

    state = _getTheme();
  }
}
