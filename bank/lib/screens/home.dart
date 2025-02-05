import 'package:bank/components/Themes/my_themes.dart';
import 'package:bank/components/content.dart';
import 'package:bank/components/sections/header.dart';
import 'package:bank/components/box_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // Classe que cria um estado estático

  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Estrutura de estilização
        floatingActionButton: FloatingActionButton.extended(
          onPressed: null,
          icon: Icon(Icons.brightness_6),
          label: Text('Tema'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // O body vai abrir uma coluna
            children: <Widget>[
              // Posso colocar vários widget dentro desse children
              Header(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Wrap(
                  runSpacing: 30,
                  children: <Widget>[
                    BoxCard(boxContent: Content()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Ações da conta',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: BoxCard(
                                boxContent: Column(
                                  children: <Widget>[
                                    Icon(Icons.account_balance_wallet_rounded),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Depositar',
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: BoxCard(
                                  boxContent: Column(
                                children: [
                                  Icon(Icons.autorenew),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Transferir',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: BoxCard(
                                  boxContent: Column(
                                children: [
                                  Icon(Icons.filter_center_focus_rounded),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Ler',
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Pontos da conta',
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 20),
                        BoxCard(boxContent: Points()),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
