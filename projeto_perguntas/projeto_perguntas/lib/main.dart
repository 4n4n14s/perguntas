

import 'package:flutter/material.dart';
import './questão.dart';
import './resposta.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'qual é sua cor favorita ?',
      'resposta': [
        {'texto': 'preto', 'pontuacao': 6},
        {'texto': 'vermelho', 'pontuacao': 3},
        {'texto': 'verde', 'pontuacao': 4},
        {'texto': 'azul', 'pontuacao': 2},
      ]
    },
    {
      'texto': 'qual é o seu animal favorito?',
      'resposta': [
        {'texto': 'leão', 'pontuacao': 6},
        {'texto': 'aguia', 'pontuacao': 3},
        {'texto': 'leopargo', 'pontuacao': 2},
        {'texto': 'elefante', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'qual sua serie favorita ?',
      'resposta': [
        {'texto': 'game of thrones', 'pontuacao': 2},
        {'texto': 'the big bang theory', 'pontuacao': 6},
        {'texto': 'america horror story', 'pontuacao': 3},
        {'texto': 'reacher', 'pontuacao': 6},
      ]
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }

    print(_pontuacaoTotal);
  }

  void reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  quandoResponder: _responder,
                )
              : Resultado(_pontuacaoTotal, reiniciarQuestionario)),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntAppState createState() {
    return _PerguntAppState();
  }
}
