import 'package:bank/screens/home.dart';
import 'package:flutter/material.dart';
import 'components/Themes/my_themes.dart';

void main() {
  runApp(SenacB());
}

class SenacB extends StatelessWidget {
  const SenacB({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Senac Investimento',
      theme: MyTheme, // Uma vez que o tema está pronto ficará sem erro
      home: Home(),
    );
  }
}

//Widget titobank() {}
