import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yominexus/core/constants.dart';

extension ColorSchemeExt on SharedPreferencesWithCache {
  (ColorScheme, ColorScheme) getColorScheme() {
    final String? colorschemeValue = getString(Constants.colorschemeKey);
    if (colorschemeValue == null) {
      return (
        Constants.defaultColorSchemeLight,
        Constants.defaultColorSchemeDark
      );
    }

    return switch (colorschemeValue) {
      'Default' => (
          Constants.defaultColorSchemeLight,
          Constants.defaultColorSchemeDark,
        ),
      'Dynamic' => (
          Constants.dynamicColorSchemeLight,
          Constants.dynamicColorSchemeDark,
        ),
      'Cloudflare' => (
          Constants.cloudflareColorSchemeLight,
          Constants.cloudflareColorSchemeDark,
        ),
      'Cotton Candy' => (
          Constants.cottonCandyColorSchemeLight,
          Constants.cottonCandyColorSchemeDark,
        ),
      'Doom' => (
          Constants.doomColorSchemeLight,
          Constants.doomColorSchemeDark,
        ),
      'Green Apple' => (
          Constants.greenAppleColorSchemeLight,
          Constants.greenAppleColorSchemeDark,
        ),
      'Lavender' => (
          Constants.lavenderColorSchemeLight,
          Constants.lavenderColorSchemeDark,
        ),
      'Matrix' => (
          Constants.matrixColorSchemeLight,
          Constants.matrixColorSchemeDark,
        ),
      'Midnight Dusk' => (
          Constants.midnightDuskColorSchemeLight,
          Constants.midnightDuskColorSchemeDark,
        ),
      'Mocha' => (
          Constants.mochaColorSchemeLight,
          Constants.mochaColorSchemeDark,
        ),
      'Sapphire' => (
          Constants.sapphireColorSchemeLight,
          Constants.sapphireColorSchemeDark,
        ),
      'Nord' => (
          Constants.nordColorSchemeLight,
          Constants.nordColorSchemeDark,
        ),
      'Strawberry Daiquiri' => (
          Constants.strawberryDaiquiriColorSchemeLight,
          Constants.strawberryDaiquiriColorSchemeDark,
        ),
      'Tako' => (
          Constants.takoColorSchemeLight,
          Constants.takoColorSchemeDark,
        ),
      'Teal & Turquoise' => (
          Constants.tealAndTurquoiseColorSchemeLight,
          Constants.tealAndTurquoiseColorSchemeDark,
        ),
      'Tidal Wave' => (
          Constants.tidalWaveColorSchemeLight,
          Constants.tidalWaveColorSchemeDark,
        ),
      'Yin & Yang' => (
          Constants.yinAndYangColorSchemeLight,
          Constants.yinAndYangColorSchemeDark,
        ),
      'Yotsuba' => (
          Constants.yotsubaColorSchemeLight,
          Constants.yotsubaColorSchemeDark,
        ),
      _ => (
          Constants.defaultColorSchemeLight,
          Constants.defaultColorSchemeDark,
        ),
    };
  }
}
