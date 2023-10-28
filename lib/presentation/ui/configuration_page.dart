part of 'ui.dart';

class ConfigurationPage extends ReactiveStatelessWidget {
  static String path = 'configuration';

  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Configuration'.text(),
      ),
      body: Column(
        children: [
          DropdownButtonFormField(
            value: configurationBloc.configuration.themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.name.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (themeMode) {
              configurationBloc.setThemeMode(themeMode!);
            },
          ).pad(),
          DropdownButtonFormField(
            value: configurationBloc.configuration.materialColor,
            items: Colors.primaries
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: e.colorName.toUpperCase().text(),
                  ),
                )
                .toList(),
            onChanged: (materialColor) {
              configurationBloc.setMaterialColor(materialColor!);
            },
          ).pad(),
        ],
      ),
    );
  }
}
