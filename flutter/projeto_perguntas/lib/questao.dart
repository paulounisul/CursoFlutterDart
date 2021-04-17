import 'dart:ui';

import 'package:flutter/material.dart';

//st para ver lista de Widget
class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
