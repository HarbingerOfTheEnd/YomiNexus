import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yominexus/core/constants.dart';
import 'package:yominexus/core/extensions.dart';

part 'colorscheme_provider.g.dart';

@riverpod
class ColorschemeProvider extends _$ColorschemeProvider {
  @override
  (ColorScheme?, ColorScheme?) build() {
    return Constants.sharedPreferences.getColorScheme();
  }

  Future<void> setColorScheme(ColorScheme colorscheme) async {}
}
