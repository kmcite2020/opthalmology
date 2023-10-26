part of 'ui.dart';

class ConfigurationPage extends ConsumerWidget {
  static String path = 'configuration';

  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final configuration = ref.watch(watchConfigurationProvider).value;
    if (configuration == null) return const CircularProgressIndicator().center();
    return Scaffold(
      appBar: AppBar(
        title: 'Configuration'.text(),
      ),
      body: Column(
        children: [
          DropdownButtonFormField(
            value: configuration.themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (themeMode) {
              ref.read(configurationBlocProvider.notifier).setThemeMode(themeMode!);
            },
          ).pad(),
          DropdownButtonFormField(
            value: configuration.materialColor,
            items: Colors.primaries
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (materialColor) {
              ref
                  .read(configurationBlocProvider.notifier)
                  .setMaterialColor(materialColor!);
            },
          ).pad(),
          SwitchListTile(
            value: configuration.isTrueColors,
            onChanged: ref.read(configurationBlocProvider.notifier).setTrueColors,
            title: 'True Colors'.text(),
          ),
          SwitchListTile(
            value: configuration.isMaterial3,
            onChanged: ref.read(configurationBlocProvider.notifier).setMaterial3,
            title: 'Use Material 3'.text(),
          ),
        ],
      ),
    );
  }
}
