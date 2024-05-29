import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        texto,
        style:TextStyle(fontSize: 29 ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
