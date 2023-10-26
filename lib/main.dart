import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:project_opthalmology/repositories/repositories.dart';

import 'ui/ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  documentsDirectory = await getApplicationDocumentsDirectory();
  runApp(const ProviderScope(child: App()));
}
