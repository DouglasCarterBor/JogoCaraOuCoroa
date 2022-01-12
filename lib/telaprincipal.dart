import 'dart:math';
import 'package:caraoucoroa/telaresultado.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class telaprincipal extends StatefulWidget {
  @override
  _telaprincipalState createState() => _telaprincipalState();
}
class _telaprincipalState extends State<telaprincipal> {



  void _abrirresultado(){

    var itens = ["cara", "coroa",];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => telaresultado(resultado)));
  }

  static double altura(BuildContext context){
    return MediaQuery.of(context).size.height;
  }  
  static double largura(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color (0xFF60BC8B),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png",),
              GestureDetector(
                onTap: _abrirresultado,
                child: Image.asset("images/botao_jogar.png"),
              ),
            ],
          ),

        ),
    );



  }
}
