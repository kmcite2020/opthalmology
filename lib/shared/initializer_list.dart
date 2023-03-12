import 'package:appwrite/appwrite.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'storage.dart';

Client client = Client();

late SharedPreferences preferences;
Future<void> initializeDependencies() async {
  await RM.storageInitializer(HiveStorage());
  // await RM.deleteAllPersistState();
  client.setEndpoint('http://localhost/v1').setProject('63ed978d4d0c39f7b4fc').setSelfSigned(); // For self signed certificates, only use for development
  preferences = await SharedPreferences.getInstance();
}
