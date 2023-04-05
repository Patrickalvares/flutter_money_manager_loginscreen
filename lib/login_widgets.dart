import 'package:flutter/material.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17, left: 17, top: 15),
      child: Container(
        height: 60,
        width: 390,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(9)),
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
    );
  }
}

class SignInText extends StatelessWidget {
  const SignInText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class EmailLoginButton extends StatelessWidget {
  const EmailLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class TitleTexts extends StatelessWidget {
  const TitleTexts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 40, left: 40, bottom: 20, top: 40),
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
    );
  }
}
