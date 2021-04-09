import 'package:flutter/material.dart';
import './questao.dart';

//Posso usar uma arrow function tambem..
//main() {
//  runApp(new PerguntaApp());
//}
main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override //com esse decorator força  o componente ser reescrito.
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é o seu animal favorito ?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed:
                  _responder, //passar a função como parametro não usar parenteses
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
              // onPressed: () {
              //   //função direto
              //   print('Resposta 2 foi selecionada');
              // },
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
              //onPressed: () => print('Resposta 3 !!!!'), //arrow funcion()
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}
