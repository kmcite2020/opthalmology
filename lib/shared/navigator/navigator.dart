import 'package:opthalmology/features/home/view/view.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

final navigator = RM.injectNavigator(
  routes: {
    '/': (data) => const HomeView(),
  },
);
