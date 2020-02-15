import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  //se a tela estiver ocupada(true) vai exibir um carregando ao invés de exibir o botão
  var busy = false;
  //inverte as cores
  var invert = false;
  //função que o botão vai executar
  Function func;
  //texto que vai ter no botão
  var text = "";

  //recebe as variáveis no contrutor
  LoadingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    //se busy for true, exibe o loading
    //senão exibe o botão
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            //coloca uma margem de 30px em todos os lados
            margin: EdgeInsets.all(30),
            height: 60,
            //largura do botão
            width: double.infinity,
            decoration: BoxDecoration(
              //se invert for verdadeiro a cor será Theme.of(context).primaryColor
              //senão será Colors.white.withOpacity(0.8),
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Colors.white : Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              onPressed: func, //passa a função como parâmetro
            ),
          );
  }
}
