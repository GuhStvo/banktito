import 'package:bank/components/Themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors
                .headerGradient), // Chamou as cores que estão no list do theme_colors
        /* 
          colors: <Color>[
            Color.red[400],
            Color.fromRGBO(255, 138, 0, 1.0),
          ]
           */
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(18)),
      ),
      child: Padding(
        padding:
            const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0), // Coloca padding

        child: Row(
          // Eixo horizontal
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Da um espaçamento entre os elementos da linha
          children: <Widget>[
            // Abrindo um children com uma lista de Widget
            Column(
              // Eixo vertical
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text.rich(
                  TextSpan(
                    text: 'R\$',
                    //style: TextStyle(fontSize: 24),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1000.00',
                        // style: Theme.of(context).textTheme.bodyLarge,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ],
                  ),
                ),
                Text('Balanço disponível')
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
