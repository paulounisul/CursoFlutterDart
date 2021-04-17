import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

//Posso usar uma arrow function tambem..
//main() {
//  runApp(new PerguntaApp());
//}
main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
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

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        // if (_perguntaSelecionada > 2) _perguntaSelecionada = 1;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override //com esse decorator força  o componente ser reescrito.
  Widget build(BuildContext context) {
    //declarativo
    //final List<Map<String, Object>> perguntas = [
    //ou po inferencia...

    //refatorar widgets de um forma mais funcional
    // List<Widget> widgets =
    //     respostas.map((t) => Resposta(t, _responder)).toList();
    // //map para transformar listas em algo diferente, pois retorna os mesmos elementos da lista original.
    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado('Parabéns!!!', 60),
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
