part of 'repositories.dart';

@Riverpod()
ConfigurationRepository configurationRepository(ConfigurationRepositoryRef ref) =>
    ConfigurationRepository();

class ConfigurationRepository {
  Stream<Configuration?> watchConfiguration() => isar.configurations.watchObject(
        'Configurations',
        fireImmediately: true,
      );
  Configuration? configuration() => isar.configurations.get('Configurations');
  void putConfiguration(Configuration configuration) => isar.write(
        (isar) => isar.configurations.put(
          configuration.copyWith(
            id: 'Configurations',
          ),
        ),
      );
}
