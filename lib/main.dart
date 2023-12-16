import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'features/app.dart';
import 'features/core/directory.dart';
import 'features/core/hive_storage.dart';
import 'features/core/isar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await directoryRM.initializeState();
  // await RM.deleteAllPersistState();
  await RM.storageInitializer(HiveStorage());
  await isarRM.initializeState();
  runApp(
    App(),
  );
}
