import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.green,
  Colors.red,
  Colors.yellow,
  Colors.pink,
  Colors.blueAccent,
  Colors.indigoAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(selectedColor >= 0, 'El color debe ser mayor o igual a cero'),
      assert(
        selectedColor < colorList.length,
        'El color debe ser menor a ${colorList.length - 1}',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    brightness: Brightness.dark,
  );
}
