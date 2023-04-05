import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_money_manager_loginscreen/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}
