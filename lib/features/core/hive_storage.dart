import 'package:hive/hive.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'directory.dart';

class HiveStorage implements IPersistStore {
  late Box _box;

  @override
  Future<void> init() async =>
      _box = Hive.box(name: 'opthalmology', directory: directory.path);

  @override
  Object? read(String key) => _box.get(key);

  @override
  Future<void> write<T>(String key, T value) async =>
      _box.put(key, value as String);

  @override
  Future<void> delete(String key) async => await _box.delete(key);

  @override
  Future<void> deleteAll() async => _box.clear();
}
