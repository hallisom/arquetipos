import 'package:flutter/material.dart';
import 'package:taxi/telas/Cadastro.dart';
import 'package:taxi/telas/Corrida.dart';
import 'package:taxi/telas/Home.dart';
import 'package:taxi/telas/PainelMotorista.dart';
import 'package:taxi/telas/PainelPassageiro.dart';

class Rotas {

  static Route<dynamic> gerarRotas(RouteSettings settings){

    final args = settings.arguments;

    switch( settings.name ){
      case "/" :
        return MaterialPageRoute(
            builder: (_) => Home()
        );
      case "/cadastro" :
        return MaterialPageRoute(
            builder: (_) => Cadastro()
        );
      case "/painel-motorista" :
        return MaterialPageRoute(
            builder: (_) => PainelMotorista()
        );
      case "/painel-passageiro" :
        return MaterialPageRoute(
            builder: (_) => PainelPassageiro()
        );
      case "/corrida" :
        return MaterialPageRoute(
            builder: (_) => Corrida(
                args
            )
        );
      default:
        _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){

    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(title: Text("Tela não encontrada!"),),
            body: Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
    );

  }

}