import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yominexus/core/constants.dart';

extension ColorSchemeExt on SharedPreferencesWithCache {
  (ColorScheme, ColorScheme) getColorScheme() {
    final String? colorschemeValue = getString(Constants.colorschemeKey);
    if (colorschemeValue == null) {
      return (
        Constants.yominexusColorSchemeLight,
        Constants.yominexusColorSchemeDark
      );
    }

    return switch (colorschemeValue) {
      'Default' => (
          Constants.yominexusColorSchemeLight,
          Constants.yominexusColorSchemeDark,
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
          Constants.strawberryColorSchemeLight,
          Constants.strawberryColorSchemeDark,
        ),
      'Tako' => (
          Constants.takoColorSchemeLight,
          Constants.takoColorSchemeDark,
        ),
      'Teal & Turquoise' => (
          Constants.tealTurquoiseColorSchemeLight,
          Constants.tealTurquoiseColorSchemeDark,
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
          Constants.yominexusColorSchemeLight,
          Constants.yominexusColorSchemeDark,
        ),
    };
  }

  Future<(ColorScheme, ColorScheme)> setColorScheme(
    ColorScheme colorScheme,
  ) async {
    final String colorschemeValue = switch (colorScheme) {
      Constants.yominexusColorSchemeLight => 'Default',
      Constants.yominexusColorSchemeDark => 'Default',
      Constants.cloudflareColorSchemeLight => 'Cloudflare',
      Constants.cloudflareColorSchemeDark => 'Cloudflare',
      Constants.cottonCandyColorSchemeLight => 'Cotton Candy',
      Constants.cottonCandyColorSchemeDark => 'Cotton Candy',
      Constants.doomColorSchemeLight => 'Doom',
      Constants.doomColorSchemeDark => 'Doom',
      Constants.greenAppleColorSchemeLight => 'Green Apple',
      Constants.greenAppleColorSchemeDark => 'Green Apple',
      Constants.lavenderColorSchemeLight => 'Lavender',
      Constants.lavenderColorSchemeDark => 'Lavender',
      Constants.matrixColorSchemeLight => 'Matrix',
      Constants.matrixColorSchemeDark => 'Matrix',
      Constants.midnightDuskColorSchemeLight => 'Midnight Dusk',
      Constants.midnightDuskColorSchemeDark => 'Midnight Dusk',
      Constants.mochaColorSchemeLight => 'Mocha',
      Constants.mochaColorSchemeDark => 'Mocha',
      Constants.sapphireColorSchemeLight => 'Sapphire',
      Constants.sapphireColorSchemeDark => 'Sapphire',
      Constants.nordColorSchemeLight => 'Nord',
      Constants.nordColorSchemeDark => 'Nord',
      Constants.strawberryColorSchemeLight => 'Strawberry Daiquiri',
      Constants.strawberryColorSchemeDark => 'Strawberry Daiquiri',
      Constants.takoColorSchemeLight => 'Tako',
      Constants.takoColorSchemeDark => 'Tako',
      Constants.tealTurquoiseColorSchemeLight => 'Teal & Turquoise',
      Constants.tealTurquoiseColorSchemeDark => 'Teal & Turquoise',
      Constants.tidalWaveColorSchemeLight => 'Tidal Wave',
      Constants.tidalWaveColorSchemeDark => 'Tidal Wave',
      Constants.yinAndYangColorSchemeLight => 'Yin & Yang',
      Constants.yinAndYangColorSchemeDark => 'Yin & Yang',
      Constants.yotsubaColorSchemeLight => 'Yotsuba',
      Constants.yotsubaColorSchemeDark => 'Yotsuba',
      _ => 'Default',
    };

    await setString(Constants.colorschemeKey, colorschemeValue);
    return Future.value(getColorScheme());
  }
}
