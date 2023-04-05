import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeometricShapes extends StatelessWidget {
  const GeometricShapes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, bottom: 8),
              child: Container(
                width: 50, // Largura do círculo
                height: 50, // Altura do círculo
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(94, 92, 229, 1),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8, bottom: 8),
              child: Container(
                width: 50, // Largura do círculo
                height: 50, // Altura do círculo
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(94, 92, 229, 1),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            width: 50, // Largura do círculo
            height: 110, // Altura do círculo
            decoration: const BoxDecoration(
              color: Color.fromRGBO(94, 92, 229, 1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
