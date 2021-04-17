import 'package:flutter/material.dart';

//st para ver lista de WidGet..
//command . para importar Material.dart
//
class Resultado extends StatelessWidget {
  final String texto;
  final double fontSize;

  Resultado(this.texto, this.fontSize);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        texto,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
