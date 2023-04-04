import 'package:flutter/material.dart';
import 'package:flutter_money_manager_loginscreen/components/geo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(child: GeometricShapes()),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 40, left: 40, bottom: 27),
                  child: Text(
                    'Assuma o Controle do Seu Dinheiro',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: 'britanica-black',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40, left: 40),
                  child: Text(
                    'Gerencie Suas Despesas. Perfeitamente.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(103, 102, 105, 1),
                      fontSize: 25,
                      fontFamily: 'britanica-black',
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                height: 60,
                width: 390,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(94, 92, 229, 1),
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    'Entrar Com Um Email ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: 'britanica-black',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                height: 60,
                width: 390,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
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
                          fontFamily: 'britanica-black',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
