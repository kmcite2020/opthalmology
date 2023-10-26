// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../blocs.dart';

@Riverpod()
Stream<Configuration?> watchConfiguration(WatchConfigurationRef ref) {
  return ref.watch(configurationRepositoryProvider).watchConfiguration();
}

@Riverpod()
Configuration? configuration(ConfigurationRef ref) {
  return ref.watch(configurationRepositoryProvider).configuration();
}

@Riverpod()
class ConfigurationBloc extends _$ConfigurationBloc {
  @override
  Configuration? build() => ref.watch(configurationProvider);

  void setConfiguration(Configuration? configuration) {
    state = configuration;
    ref.watch(configurationRepositoryProvider).putConfiguration(configuration!);
  }

  void setThemeMode(ThemeMode themeMode) {
    setConfiguration(state?.copyWith(themeMode: themeMode));
  }

  void setTrueColors(bool isTrueColors) {
    setConfiguration(state?.copyWith(isTrueColors: isTrueColors));
  }

  void setMaterial3(bool isMaterial3) {
    setConfiguration(state?.copyWith(isMaterial3: isMaterial3));
  }

  void setMaterialColor(MaterialColor materialColor) {
    setConfiguration(
      state?.copyWith(
        materialColorIndex: materialColor.index,
      ),
    );
  }
}

extension OO2 on MaterialColor {
  int get index => Colors.primaries.indexOf(this);
}

extension OO3 on int {
  MaterialColor get materialColor {
    if (this < Colors.primaries.length) {
      return Colors.primaries[this];
    } else {
      return Colors.deepPurple;
    }
  }
}

@Collection()
@CopyWith()
class Configuration {
  final String id;
  final ThemeMode themeMode;
  final bool isTrueColors;
  final bool isMaterial3;
  final int materialColorIndex;
  const Configuration({
    this.id = 'Configurations',
    this.themeMode = ThemeMode.system,
    this.isTrueColors = false,
    this.isMaterial3 = false,
    this.materialColorIndex = 0,
  });
  @ignore
  MaterialColor get materialColor => materialColorIndex.materialColor;
}
