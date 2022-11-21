import 'package:app_recetas/src/widgets/texto_receta.dart';
import 'package:flutter/material.dart';

Widget recetasListado() {
  return Column(
    children: <Widget>[
      GestureDetector(
          onTap: () {
            print('object');
          },
          child: Image(
            image: AssetImage('assets/receta2.jpg'),
            fit: BoxFit.fill,
            width: 250.0,
            height: 290.0,
          )),
      textoReceta()
    ],
  );
}
