import 'package:flutter/material.dart';
import 'Themes/theme_colors.dart';


class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.circle,
                size: 10,
                color: Colors.blue,
              ),
              Column(
                children: <Widget>[
                  Text('Saída'),
                  Text('950')
                ],
              )
            ],
          ),
          Icon(
            Icons.circle,
            size: 10,
            color: Colors.orange,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Text('Entrada'),
                Text('R\$ 932,35',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
