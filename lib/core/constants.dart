import 'package:flutter/material.dart';
import 'package:yominexus/ui/library/novel/novel_library_view.dart';

@immutable
class Constants {
  const Constants._();

  static const String initialRoute = NovelLibraryView.routeName;
  static final Map<String, WidgetBuilder> routes = {
    NovelLibraryView.routeName: (context) => const NovelLibraryView(),
  };

  static const String _keyPrefix = 'yominexus';
  static const String themeDataKey = '$_keyPrefix.themeData';
  static const String themeModeKey = '$_keyPrefix.themeMode';
  static const Set<String> allowList = {
    themeDataKey,
    themeModeKey,
  };

  static const ColorScheme cloudflareColorSchemeDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFF38020),
    onPrimary: Color(0xFF1B1B22),
    primaryContainer: Color(0xFFF38020),
    onPrimaryContainer: Color(0xFF1B1B22),
    inversePrimary: Color(0xFFD6BAFF),
    secondary: Color(0xFFF38020),
    onSecondary: Color(0xFF1B1B22),
    secondaryContainer: Color(0xFFF38020),
    onSecondaryContainer: Color(0xFF1B1B22),
    tertiary: Color(0xFF1B1B22),
    onTertiary: Color(0xFFF38020),
    tertiaryContainer: Color(0xFF1B1B22),
    onTertiaryContainer: Color(0xFFF38020),
    surface: Color(0xFF1B1B22),
    onSurface: Color(0xFFEFF2F5),
    surfaceContainerHighest: Color(0xFF3F3F46),
    onSurfaceVariant: Color(0xFFD8FFFF),
    surfaceTint: Color(0xFFF38020),
    inverseSurface: Color(0xFFF3EFF4),
    onInverseSurface: Color(0xFF313033),
    outline: Color(0xFFF38020),
    error: Color(0xFFCF6679),
    onError: Color(0xFF1C1B1F),
  );
}
