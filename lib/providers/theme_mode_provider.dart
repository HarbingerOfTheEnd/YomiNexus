import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yominexus/core/constants.dart';
import 'package:yominexus/core/extensions.dart';

part 'theme_mode_provider.g.dart';

@riverpod
class YominexusThemeMode extends _$YominexusThemeMode {
  @override
  ThemeMode build() {
    return Constants.sharedPreferences.getThemeMode();
  }

  Future<void> setThemeMode(ThemeMode themeMode) async {
    await Constants.sharedPreferences.setThemeMode(themeMode);
    state = themeMode;
  }
}
