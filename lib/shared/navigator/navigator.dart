import 'package:states_rebuilder/states_rebuilder.dart';

import '../../features/auth/view/register.dart';
import '../../features/home/view.dart';

final navigator = RM.injectNavigator(
  routes: {
    '/': (RouteData data) {
      if (true) {
        return const MyHomePage();
        // ignore: dead_code
      } else {
        return RegisterView();
      }
    },
    '/signInPage': (RouteData data) => RegisterView(),
    '/homePage': (RouteData data) => const MyHomePage(),
  },
  onNavigate: (RouteData data) {
    // final toLocation = data.location;
    // if (toLocation == '/homePage' && userIsNotSigned) {
    //   return data.redirectTo('/signInPage');
    // }
    // if (toLocation == '/signInPage' && userIsSigned) {
    //   return data.redirectTo('/homePage');
    // }

    //You can also check query or path parameters
    if (data.queryParams['userId'] == '1') {
      return data.redirectTo('/superUserPage');
    }
    return null;
  },
);
