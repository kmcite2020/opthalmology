import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'domain/repositories/repositories.dart';
import 'presentation/ui/ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  documentsDirectory = await getApplicationDocumentsDirectory();
  await RM.storageInitializer(BlocStorage());
  runApp(
    App(),
  );
}

class BlocStorage implements IPersistStore {
  late SharedPreferences _sharedPreferences;

  @override
  Future<void> init() async {
    // Initialize the plugging
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  @override
  Object? read(String key) {
    return _sharedPreferences.getString(key);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    await _sharedPreferences.setString(key, value as String);
  }

  @override
  Future<void> delete(String key) async {
    await _sharedPreferences.remove(key);
  }

  @override
  Future<void> deleteAll() async {
    await _sharedPreferences.clear();
  }
}

abstract class ToJson {
  String toJson();
}

String toJson<State extends ToJson>(State state) => state.toJson();
