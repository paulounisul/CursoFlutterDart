import 'package:flutter/material.dart';
import './resposta.dart';
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
      if (_perguntaSelecionada > 2) _perguntaSelecionada = 1;
    });
  }

  @override //com esse decorator força  o componente ser reescrito.
  Widget build(BuildContext context) {
    //declarativo
    //final List<Map<String, Object>> perguntas = [
    //ou po inferencia...
    final perguntas = [
      {
        'texto': "Qual é a sua cor favorita",
        'respostas': ['Preto', 'Vermelho', 'Azul', 'Branco']
      },
      {
        'texto': 'Qual é ao o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Onça']
      },
      {
        'texto': 'Qual sua atriz favorita?',
        'respostas': ['Paola', 'Lilian', 'Jennifer', 'Lucy']
      }
    ];

    List<Widget> respostas = [];

    for (String textoResp in perguntas[_perguntaSelecionada]['respostas']) {
      respostas.add(Resposta(textoResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']),
            ...respostas, //... é o operador spread.
            // Resposta('Resposta 1', _responder),
            // Resposta('Resposta 2', _responder),
            // Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

// RaisedButton(
//   child: Text('Resposta 1'),
//   onPressed:
//       _responder, //passar a função como parametro não usar parenteses
// ),
class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return new _PerguntaAppState();
  }
}
