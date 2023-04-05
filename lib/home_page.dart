import 'package:flutter/material.dart';
import 'package:flutter_money_manager_loginscreen/components/geometric_forms.dart';
import 'login_widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(child: GeometricShapes()),
            TitleTexts(),
            EmailLoginButton(),
            GoogleLoginButton(),
            SignInText(),
          ]),
    );
  }
}
