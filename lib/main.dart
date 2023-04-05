import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_money_manager_loginscreen/components/geo.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'Tools'),
          bodyText2: TextStyle(fontFamily: 'Tools'),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
          children: [
            const Center(child: GeometricShapes()),
            Column(
              children: const [
                Padding(
                  padding:
                      EdgeInsets.only(right: 40, left: 40, bottom: 20, top: 40),
                  child: Text(
                    'Assuma o Controle do Seu Dinheiro',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40, left: 40, bottom: 90),
                  child: Text(
                    'Gerencie Suas Despesas. Perfeitamente.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(103, 102, 105, 1),
                      fontSize: 23,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 17, left: 17),
              child: Container(
                height: 60,
                width: 390,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(94, 92, 229, 1),
                    borderRadius: BorderRadius.circular(9)),
                child: const Center(
                  child: Text(
                    'Entrar Com Um Email ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 17, left: 17, top: 15),
              child: Container(
                height: 60,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 35,
                        child: Image.asset('lib/assets/Google_Icon.png'),
                      ),
                      const Text(
                        'Entrar Com O Google ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40, top: 40),
              child: RichText(
                text: const TextSpan(
                  text: 'Já possui conta? ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Entre Aqui',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
