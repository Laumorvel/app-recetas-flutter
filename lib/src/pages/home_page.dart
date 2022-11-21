import 'package:app_recetas/src/styles/styles.dart';
import 'package:app_recetas/src/widgets/app_bar.dart';
import 'package:app_recetas/src/widgets/menu_lateral.dart';
import 'package:app_recetas/src/widgets/receta_listado.dart';
import 'package:app_recetas/src/widgets/swiper_categorias.dart';
import 'package:app_recetas/src/widgets/swiper_populares.dart';
import 'package:app_recetas/src/widgets/titles.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: colorBG,
        body: CustomScrollView(slivers: <Widget>[
          appBar(context, _scaffoldKey),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: <Widget>[
                swiperPopulares(),
               // SizedBox(height: 30),
                titles('Categorías'),
                swiperCategorias(),
                titles('Recetas Populares'),
                recetasListado(),recetasListado(),recetasListado(),recetasListado(),recetasListado()
              ],
            )
          ]))
        ]));
  }
}
