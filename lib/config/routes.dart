import 'package:app/ui/screens/home_screen/home_screen.dart';
import 'package:app/ui/screens/splash_screen/splash_scren.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> _routeGenerator() {
  final Map<String, WidgetBuilder> routes = {
    SplashScreen.routeName: (_) => const SplashScreen(),
    HomeScreen.routeName: (_) => HomeScreen(),
  };

  return routes;
}

final routes = _routeGenerator();