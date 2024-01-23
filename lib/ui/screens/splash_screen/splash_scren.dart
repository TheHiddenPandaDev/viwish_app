import 'package:app/ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'splash';

  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const Text('Splash'),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            child: const Text('Pulsame para ir a la home'),
            onPressed: () {
              Navigator.of(context).pushNamed(HomeScreen.routeName);
            },
          ),
        ],
      ),
    ));
  }
}
