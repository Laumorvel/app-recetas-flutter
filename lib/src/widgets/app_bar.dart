import 'package:flutter/material.dart';

Widget appBar(BuildContext context, GlobalKey<ScaffoldState> key){
  return SliverAppBar(
    backgroundColor: const Color.fromRGBO(244, 252, 255, 1.0),
    floating: false,
    leading: GestureDetector(
      onTap: (){
        key.currentState?.openDrawer();
      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: const Image(
          image: AssetImage('assets/menu.png'),
          width: 10.0,
          height: 10.0,
          ),
      ),
    ),actions: <Widget>[
      Container(
        padding: const EdgeInsets.all(15.0),
        child: const Icon(
          Icons.search,
          color:Color.fromRGBO(183, 195, 206, 1.0),
          size: 25.0,
        ),
      )
    ],
  );
}