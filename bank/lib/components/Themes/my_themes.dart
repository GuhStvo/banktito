import 'package:bank/components/Themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor, // Definindo cor padrão
  primaryColor: ThemeColors.primaryColor, // Definindo a cor primária
  brightness: Brightness.dark, // Tema escuro ou claro
  textTheme: TextTheme( // Estilo de font
    bodyMedium: TextStyle(
      fontSize: 16, // Tamanho da fonte
    ),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold, // Peso da font
    ),
  )
);