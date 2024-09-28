import 'package:flutter/material.dart';
import 'package:yominexus/providers/colorscheme_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'theme_provider.g.dart';

@riverpod
class YominexusTheme extends _$YominexusTheme {
  @override
  (ThemeData?, ThemeData?) build() {
    final (lightColorScheme, darkColorScheme) = ref.watch(
      yominexusColorSchemeProvider,
    );
    late final ThemeData? lightTheme;
    late final ThemeData? darkTheme;

    if (lightColorScheme != null) {
      lightTheme = ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        colorScheme: lightColorScheme,
      );
    }

    if (darkColorScheme != null) {
      darkTheme = ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        colorScheme: darkColorScheme,
      );
    }

    return (lightTheme, darkTheme);
  }
}
