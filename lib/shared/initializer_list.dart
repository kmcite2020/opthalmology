import 'package:shared_preferences/shared_preferences.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'hive_storage.dart';

late SharedPreferences preferences;
Future<void> initializeDependencies() async {
  await RM.storageInitializer(HiveStorage());
  preferences = await SharedPreferences.getInstance();
}
