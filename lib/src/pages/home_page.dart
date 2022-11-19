import 'package:app_recetas/src/widgets/app_bar.dart';
import 'package:app_recetas/src/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: const Color.fromRGBO(244, 252, 255, 1.0),
        body: CustomScrollView(slivers: <Widget>[
          appBar(context, _scaffoldKey),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              child: Text("Hola"),
            )
          ]))
        ]));
  }
}
