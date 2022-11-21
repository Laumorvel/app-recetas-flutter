import 'package:app_recetas/src/styles/styles.dart';
import 'package:flutter/material.dart';

Widget textoReceta() {
  return Column(
    children: <Widget>[
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: EdgeInsets.only(left: 30.0, top: 0.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Pasta con cosas',
                textAlign: TextAlign.left, style: titlesRecipeStyle),
            Text('Una receta superrica, madre mía cómo está esto niño.',
                textAlign: TextAlign.left, style: descripcionRecipeStyle),
            Container(
                child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                    child: Row(
                  children: <Widget>[
                    Icon(Icons.alarm, color: colorIconos),
                    Container(
                      child: Text(
                        '45 min',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                            color: colorTitles,
                            fontSize: 14.0),
                      ),
                    )
                  ],
                )),
                Expanded(
                  flex: 2,
                    child: Row(
                  children: <Widget>[
                    Icon(Icons.fastfood, color: colorIconos),
                    Container(
                      child: Text(
                        'Medium',
                        style: TextStyle(
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                            color: colorTitles,
                            fontSize: 14.0),
                      ),
                    )
                  ],
                ))
              ],
            ))
          ],
        ),
      ),
    ],
  );
}
