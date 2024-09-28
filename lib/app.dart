import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yominexus/core/constants.dart';
import 'package:yominexus/providers/theme_provider.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (lightTheme, darkTheme) = ref.watch(yominexusThemeProvider);
    final ThemeData? theme = lightTheme ?? darkTheme;

    return MaterialApp(
      restorationScopeId: 'app',
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en', ''),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)?.appTitle ?? 'YomiNexus',
      theme: theme,
      darkTheme: darkTheme,
      initialRoute: Constants.initialRoute,
      routes: Constants.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
