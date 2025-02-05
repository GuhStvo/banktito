import 'package:flutter/material.dart';
import 'Themes/theme_colors.dart';

// Conteúdo 1 (Sáida e entrada)
class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.circle, size: 10, color: Colors.blue),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Saída'),
                      Text(
                        'R\$ 950,50',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(width: 5),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Entrada'),
                      Text(
                        'R\$ 932,35',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          Text('Limites de gastos: R\$ 735,935'),
          Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.blue[200],
                ),
                child: null,
                height: 10,
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.orange,
                ),
                child: null,
                height: 10,
              )),
            ],
          ),
          Divider(),
          Text(
              'Esse mês você gastou R\$ 1500,00 com jogos. Tente abaixar esse custo!'),
          Container(
            margin: EdgeInsets.all(8),
            child: Text(
              'Diga-me como',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// Pontos da conta
class Points extends StatelessWidget {
  const Points({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Pontos totais:'),
          SizedBox(height: 15),
          Text(
            '3000',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Text('Objetivos:'),
          Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.orange,
                size: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Entrega grátis: 15000pts'),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.circle,
                color: Colors.blue,
                size: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Text('1 mês de streaming: 3000pts')
            ],
          )
        ],
      ),
    );
  }
}
