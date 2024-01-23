import 'package:app/application.dart';
import 'package:app/config/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const ViWish());
}
