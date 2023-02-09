import 'package:fluro/fluro.dart';
import '../pages/home/home_page.dart';
import '../pages/splash/splash_page.dart';

var homeRouteHandler = Handler(handlerFunc: (context, params) {
  return const HomePage();
});

var splashRouteHandler = Handler(handlerFunc: (context, params) {
  return const SplashPage();
});