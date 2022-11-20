import 'package:app_recetas/src/styles/styles.dart';
import 'package:flutter/material.dart';

Widget titles(String texto) {
  return Container(
    alignment: AlignmentDirectional.topStart,
    margin: EdgeInsets.only(left: 30.0, top: 20.0),
    child: Text(texto, style: titlesStyle));
}
