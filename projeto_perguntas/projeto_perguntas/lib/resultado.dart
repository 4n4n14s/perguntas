// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'parabens';
    } else if (pontuacao < 12) {
      return 'você é bom';
    } else if (pontuacao < 16) {
      return 'imprecionante';
    } else {
      return 'você é um Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 30),
          ),
        ),
        TextButton(
          child: Text(
            'reiniciar?',
            style: TextStyle(color: const Color.fromARGB(255, 4, 57, 100)),
          ),
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
