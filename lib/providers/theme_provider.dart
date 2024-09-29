import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yominexus/core/constants.dart';
import 'package:yominexus/core/extensions.dart';
import 'package:yominexus/providers/amoled_provider.dart';
part 'theme_provider.g.dart';

@riverpod
class YominexusTheme extends _$YominexusTheme {
  (ThemeData?, ThemeData?) _getTheme() {
    final ColorScheme? lightColorScheme;
    ColorScheme? darkColorScheme;

    (lightColorScheme, darkColorScheme) =
        Constants.sharedPreferences.getColorScheme();
    final bool isPureBlackDarkMode = ref.watch(
      yominexusIsPureBlackDarkModeProvider,
    );

    if (isPureBlackDarkMode) {
      const Color surfaceContainer = Color(0xFF0C0C0C);
      const Color surfaceContainerHigh = Color(0xFF131313);
      const Color surfaceContainerHighest = Color(0xFF1B1B1B);

      darkColorScheme = darkColorScheme?.copyWith(
        surface: Colors.black,
        onSurface: Colors.white,
        surfaceContainerLowest: surfaceContainer,
        surfaceContainerLow: surfaceContainer,
        surfaceContainer: surfaceContainer,
        surfaceContainerHigh: surfaceContainerHigh,
        surfaceContainerHighest: surfaceContainerHighest,
      );
    }

    final ThemeData? lightTheme = lightColorScheme != null
        ? ThemeData.light(useMaterial3: true).copyWith(
            colorScheme: lightColorScheme,
            scaffoldBackgroundColor: lightColorScheme.surface,
            typography: Typography.material2021(),
            textTheme: GoogleFonts.robotoTextTheme(),
          )
        : null;

    final ThemeData? darkTheme = darkColorScheme != null
        ? ThemeData.dark(useMaterial3: true).copyWith(
            colorScheme: darkColorScheme,
            scaffoldBackgroundColor: darkColorScheme.surface,
          )
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
