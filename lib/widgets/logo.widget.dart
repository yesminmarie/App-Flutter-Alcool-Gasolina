import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //espaço entre o topo e a imagem
        SizedBox(
          height: 60,
        ),
        Image.asset(
          //insere o logotipo
          "assets/images/aog-white.png",
          height: 80,
        ),
        //espaço entre a imagem e os textos
        SizedBox(
          height: 10,
        ),
        Text(
          "Álcool ou Gasolina",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Big Shoulders Display",
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
