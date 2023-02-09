import 'package:fluro/fluro.dart';

import 'route_handlers.dart';
import '../constant/logger.dart';

class Routes {
  static String home = '/home';
  static String splash = '/';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(handlerFunc: (context, params) {
      logger.e('ROUTE WAS NOT FOUND !!!');
      return;
    });

    router.define(home, handler: homeRouteHandler);
    router.define(splash, handler: splashRouteHandler);
  }
}