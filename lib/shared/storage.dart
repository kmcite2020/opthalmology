import 'package:hive_flutter/hive_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class HiveStorage implements IPersistStore {
  late Box x;
  @override
  Future<void> init() async {
    await Hive.initFlutter();
    x = await Hive.openBox('OPTHALMOLOGY');
  }

  @override
  Future<void> delete(String key) async => x.delete(key);

  @override
  Future<void> deleteAll() async => x.clear();

  @override
  Object? read(String key) => x.get(key);

  @override
  Future<void> write<T>(String key, T value) async => x.put(key, value);
}
