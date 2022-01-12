import 'package:caraoucoroa/telaprincipal.dart';
import 'package:flutter/material.dart';

class telaresultado extends StatefulWidget {

  String valor;
  telaresultado (this.valor);

  @override
  _telaresultadoState createState() => _telaresultadoState();
}

class _telaresultadoState extends State<telaresultado> {

  @override
  Widget build(BuildContext context) {

    var _caminhoImagem;

    if(widget.valor == "cara"){
      _caminhoImagem = "images/moeda_cara.png";
    } else {
      _caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color (0xFF60BC8B),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(_caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            ),
          ],
        ),
      ),
    );
  }
}
