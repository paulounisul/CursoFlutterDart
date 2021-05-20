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
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': "Qual é a sua cor favorita",
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é ao o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 10},
        {'texto': 'Cobra', 'pontuacao': 5},
        {'texto': 'Elefante', 'pontuacao': 3},
        {'texto': 'Onça', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual sua atriz favorita?',
      'respostas': [
        {'texto': 'Paola', 'pontuacao': 10},
        {'texto': 'Lilian', 'pontuacao': 5},
        {'texto': 'Jenn,ifer', 'pontuacao': 3},
        {'texto': 'Lucy', 'pontuacao': 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
        // if (_perguntaSelecionada > 2) _perguntaSelecionada = 1;
      });
    }
    print(_pontuacaoTotal);
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
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
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
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
