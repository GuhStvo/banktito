import 'package:bank/components/content.dart';
import 'package:bank/components/sections/header.dart';
import 'package:bank/components/box_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget { // Classe que cria um estado estático
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Estrutura de estilização 
      body: Column( // O body vai abrir uma coluna
        children: <Widget>[ // Posso colocar vários widget dentro desse children
          Header(),
          Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: BoxCard(boxContent: Content()),
          ),
        ],
      ),
    );
    
  }
}
