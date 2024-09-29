import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yominexus/core/extensions.dart';
import 'package:yominexus/providers/amoled_provider.dart';
import 'package:yominexus/providers/theme_mode_provider.dart';

class AppearanceSettingsView extends ConsumerWidget {
  static const String routeName = '/settings/appearance';

  const AppearanceSettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode selectedThemeMode = ref.watch(yominexusThemeModeProvider);
    final bool isAmoled = ref.watch(yominexusIsPureBlackDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appearance',
        ),
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0.0,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),
      body: ListView(
        padding: const EdgeInsets.all(
          16.0,
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              'Theme',
              style: TextStyle(
                fontSize: 16.0,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          ListTile(
            title: _ThemeModeSelector(
              selectedThemeMode: selectedThemeMode,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          if (selectedThemeMode != ThemeMode.light)
            ListTile(
              title: const Text(
                'Pure black dark mode',
              ),
              trailing: Switch(
                value: isAmoled,
                onChanged: (isAmoled) {
                  ref
                      .watch(yominexusIsPureBlackDarkModeProvider.notifier)
                      .setIsPureBlackDarkMode(isAmoled);
                },
                hoverColor: Colors.transparent,
                thumbColor: const WidgetStatePropertyAll(
                  Colors.white,
                ),
              ),
              onTap: () {
                ref
                    .watch(yominexusIsPureBlackDarkModeProvider.notifier)
                    .setIsPureBlackDarkMode(!isAmoled);
              },
            ),
        ],
      ),
    );
  }
}

class _ThemeModeSelector extends ConsumerWidget {
  final ThemeMode selectedThemeMode;

  const _ThemeModeSelector({
    required this.selectedThemeMode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SegmentedButton(
      expandedInsets: const EdgeInsets.all(
        16.0,
      ),
      segments: ThemeMode.values
          .map(
            (themeMode) => ButtonSegment(
              value: themeMode,
              label: Text(
                themeMode.name.capitalize(),
              ),
            ),
          )
          .toList(),
      selected: <ThemeMode>{
        selectedThemeMode,
      },
      onSelectionChanged: (selectedThemeModes) {
        ref.read(yominexusThemeModeProvider.notifier).setThemeMode(
              selectedThemeModes.first,
            );
      },
      style: SegmentedButton.styleFrom(
        visualDensity: const VisualDensity(
          horizontal: -2.0,
          vertical: 0.0,
        ),
      ),
    );
  }
}
