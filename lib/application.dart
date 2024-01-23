import 'package:app/ui/screens/splash_screen/splash_scren.dart';
import 'package:flutter/material.dart';

import 'config/routes.dart';

class ViWish extends StatelessWidget {
  const ViWish({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
