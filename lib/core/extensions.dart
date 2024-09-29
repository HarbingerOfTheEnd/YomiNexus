import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yominexus/core/constants.dart';

extension ColorSchemeExt on SharedPreferencesWithCache {
  (ColorScheme?, ColorScheme?) getColorScheme() {
    final String colorschemeValue =
        getString(Constants.colorschemeKey) ?? 'Default';
    final String themeModeValue = getString(Constants.themeModeKey) ?? 'system';

    return switch ([colorschemeValue, themeModeValue]) {
      [Constants.cloudflareColorSchemeValue, 'light'] => (
          Constants.cloudflareColorSchemeLight,
          null
        ),
      [Constants.cloudflareColorSchemeValue, 'dark'] => (
          null,
          Constants.cloudflareColorSchemeDark,
        ),
      [Constants.cloudflareColorSchemeValue, 'system'] => (
          Constants.cloudflareColorSchemeLight,
          Constants.cloudflareColorSchemeDark,
        ),
      [Constants.cottonCandyColorSchemeValue, 'light'] => (
          Constants.cottonCandyColorSchemeLight,
          null,
        ),
      [Constants.cottonCandyColorSchemeValue, 'dark'] => (
          null,
          Constants.cottonCandyColorSchemeDark,
        ),
      [Constants.cottonCandyColorSchemeValue, 'system'] => (
          Constants.cottonCandyColorSchemeLight,
          Constants.cottonCandyColorSchemeDark,
        ),
      [Constants.doomColorSchemeValue, 'light'] => (
          Constants.doomColorSchemeLight,
          null,
        ),
      [Constants.doomColorSchemeValue, 'dark'] => (
          null,
          Constants.doomColorSchemeDark,
        ),
      [Constants.doomColorSchemeValue, 'system'] => (
          Constants.doomColorSchemeLight,
          Constants.doomColorSchemeDark,
        ),
      [Constants.greenAppleColorSchemeValue, 'light'] => (
          Constants.greenAppleColorSchemeLight,
          null,
        ),
      [Constants.greenAppleColorSchemeValue, 'dark'] => (
          null,
          Constants.greenAppleColorSchemeDark,
        ),
      [Constants.greenAppleColorSchemeValue, 'system'] => (
          Constants.greenAppleColorSchemeLight,
          Constants.greenAppleColorSchemeDark,
        ),
      [Constants.lavenderColorSchemeValue, 'light'] => (
          Constants.lavenderColorSchemeLight,
          null,
        ),
      [Constants.lavenderColorSchemeValue, 'dark'] => (
          null,
          Constants.lavenderColorSchemeDark,
        ),
      [Constants.lavenderColorSchemeValue, 'system'] => (
          Constants.lavenderColorSchemeLight,
          Constants.lavenderColorSchemeDark,
        ),
      [Constants.matrixColorSchemeValue, 'light'] => (
          Constants.matrixColorSchemeLight,
          null,
        ),
      [Constants.matrixColorSchemeValue, 'dark'] => (
          null,
          Constants.matrixColorSchemeDark,
        ),
      [Constants.matrixColorSchemeValue, 'system'] => (
          Constants.matrixColorSchemeLight,
          Constants.matrixColorSchemeDark,
        ),
      [Constants.midnightDuskColorSchemeValue, 'light'] => (
          Constants.midnightDuskColorSchemeLight,
          null,
        ),
      [Constants.midnightDuskColorSchemeValue, 'dark'] => (
          null,
          Constants.midnightDuskColorSchemeDark,
        ),
      [Constants.midnightDuskColorSchemeValue, 'system'] => (
          Constants.midnightDuskColorSchemeLight,
          Constants.midnightDuskColorSchemeDark,
        ),
      [Constants.mochaColorSchemeValue, 'light'] => (
          Constants.mochaColorSchemeLight,
          null,
        ),
      [Constants.mochaColorSchemeValue, 'dark'] => (
          null,
          Constants.mochaColorSchemeDark,
        ),
      [Constants.mochaColorSchemeValue, 'system'] => (
          Constants.mochaColorSchemeLight,
          Constants.mochaColorSchemeDark,
        ),
      [Constants.sapphireColorSchemeValue, 'light'] => (
          Constants.sapphireColorSchemeLight,
          null,
        ),
      [Constants.sapphireColorSchemeValue, 'dark'] => (
          null,
          Constants.sapphireColorSchemeDark,
        ),
      [Constants.sapphireColorSchemeValue, 'system'] => (
          Constants.sapphireColorSchemeLight,
          Constants.sapphireColorSchemeDark,
        ),
      [Constants.nordColorSchemeValue, 'light'] => (
          Constants.nordColorSchemeLight,
          null,
        ),
      [Constants.nordColorSchemeValue, 'dark'] => (
          null,
          Constants.nordColorSchemeDark,
        ),
      [Constants.nordColorSchemeValue, 'system'] => (
          Constants.nordColorSchemeLight,
          Constants.nordColorSchemeDark,
        ),
      [Constants.strawberryColorSchemeValue, 'light'] => (
          Constants.strawberryColorSchemeLight,
          null,
        ),
      [Constants.strawberryColorSchemeValue, 'dark'] => (
          null,
          Constants.strawberryColorSchemeDark,
        ),
      [Constants.strawberryColorSchemeValue, 'system'] => (
          Constants.strawberryColorSchemeLight,
          Constants.strawberryColorSchemeDark,
        ),
      [Constants.takoColorSchemeValue, 'light'] => (
          Constants.takoColorSchemeLight,
          null,
        ),
      [Constants.takoColorSchemeValue, 'dark'] => (
          null,
          Constants.takoColorSchemeDark,
        ),
      [Constants.takoColorSchemeValue, 'system'] => (
          Constants.takoColorSchemeLight,
          Constants.takoColorSchemeDark,
        ),
      [Constants.tealTurquoiseColorSchemeValue, 'light'] => (
          Constants.tealTurquoiseColorSchemeLight,
          null,
        ),
      [Constants.tealTurquoiseColorSchemeValue, 'dark'] => (
          null,
          Constants.tealTurquoiseColorSchemeDark,
        ),
      [Constants.tealTurquoiseColorSchemeValue, 'system'] => (
          Constants.tealTurquoiseColorSchemeLight,
          Constants.tealTurquoiseColorSchemeDark,
        ),
      [Constants.tidalWaveColorSchemeValue, 'light'] => (
          Constants.tidalWaveColorSchemeLight,
          null,
        ),
      [Constants.tidalWaveColorSchemeValue, 'dark'] => (
          null,
          Constants.tidalWaveColorSchemeDark,
        ),
      [Constants.tidalWaveColorSchemeValue, 'system'] => (
          Constants.tidalWaveColorSchemeLight,
          Constants.tidalWaveColorSchemeDark,
        ),
      [Constants.yinAndYangColorSchemeValue, 'light'] => (
          Constants.yinAndYangColorSchemeLight,
          null,
        ),
      [Constants.yinAndYangColorSchemeValue, 'dark'] => (
          null,
          Constants.yinAndYangColorSchemeDark,
        ),
      [Constants.yinAndYangColorSchemeValue, 'system'] => (
          Constants.yinAndYangColorSchemeLight,
          Constants.yinAndYangColorSchemeDark,
        ),
      [Constants.yotsubaColorSchemeValue, 'light'] => (
          Constants.yotsubaColorSchemeLight,
          null,
        ),
      [Constants.yotsubaColorSchemeValue, 'dark'] => (
          null,
          Constants.yotsubaColorSchemeDark,
        ),
      [Constants.yotsubaColorSchemeValue, 'system'] => (
          Constants.yotsubaColorSchemeLight,
          Constants.yotsubaColorSchemeDark,
        ),
      _ => (null, null),
    };
  }

  Future<void> setColorScheme(
    ColorScheme colorScheme,
  ) async {
    final String colorschemeValue = switch (colorScheme) {
      Constants.cloudflareColorSchemeLight =>
        Constants.cloudflareColorSchemeValue,
      Constants.cloudflareColorSchemeDark =>
        Constants.cloudflareColorSchemeValue,
      Constants.cottonCandyColorSchemeLight =>
        Constants.cottonCandyColorSchemeValue,
      Constants.cottonCandyColorSchemeDark =>
        Constants.cottonCandyColorSchemeValue,
      Constants.doomColorSchemeLight => Constants.doomColorSchemeValue,
      Constants.doomColorSchemeDark => Constants.doomColorSchemeValue,
      Constants.greenAppleColorSchemeLight =>
        Constants.greenAppleColorSchemeValue,
      Constants.greenAppleColorSchemeDark =>
        Constants.greenAppleColorSchemeValue,
      Constants.lavenderColorSchemeLight => Constants.lavenderColorSchemeValue,
      Constants.lavenderColorSchemeDark => Constants.lavenderColorSchemeValue,
      Constants.matrixColorSchemeLight => Constants.matrixColorSchemeValue,
      Constants.matrixColorSchemeDark => Constants.matrixColorSchemeValue,
      Constants.midnightDuskColorSchemeLight =>
        Constants.midnightDuskColorSchemeValue,
      Constants.midnightDuskColorSchemeDark =>
        Constants.midnightDuskColorSchemeValue,
      Constants.mochaColorSchemeLight => Constants.mochaColorSchemeValue,
      Constants.mochaColorSchemeDark => Constants.mochaColorSchemeValue,
      Constants.sapphireColorSchemeLight => Constants.sapphireColorSchemeValue,
      Constants.sapphireColorSchemeDark => Constants.sapphireColorSchemeValue,
      Constants.nordColorSchemeLight => Constants.nordColorSchemeValue,
      Constants.nordColorSchemeDark => Constants.nordColorSchemeValue,
      Constants.strawberryColorSchemeLight =>
        Constants.strawberryColorSchemeValue,
      Constants.strawberryColorSchemeDark =>
        Constants.strawberryColorSchemeValue,
      Constants.takoColorSchemeLight => Constants.takoColorSchemeValue,
      Constants.takoColorSchemeDark => Constants.takoColorSchemeValue,
      Constants.tealTurquoiseColorSchemeLight =>
        Constants.tealTurquoiseColorSchemeValue,
      Constants.tealTurquoiseColorSchemeDark =>
        Constants.tealTurquoiseColorSchemeValue,
      Constants.tidalWaveColorSchemeLight =>
        Constants.tidalWaveColorSchemeValue,
      Constants.tidalWaveColorSchemeDark => Constants.tidalWaveColorSchemeValue,
      Constants.yinAndYangColorSchemeLight =>
        Constants.yinAndYangColorSchemeValue,
      Constants.yinAndYangColorSchemeDark =>
        Constants.yinAndYangColorSchemeValue,
      Constants.yotsubaColorSchemeLight => Constants.yotsubaColorSchemeValue,
      _ => Constants.yominexusColorSchemeValue,
    };

    await setString(Constants.colorschemeKey, colorschemeValue);
  }
}
