import 'package:app_recetas/src/pages/categorias.dart';
import 'package:app_recetas/src/pages/detalle_receta.dart';
import 'package:app_recetas/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes:<String, WidgetBuilder> {
      '/' : (BuildContext context) => const HomePage(),
      '/categoria' : (BuildContext context) => const CategoriaPage(),
      '/detalle' : (BuildContext context) => const DetallePage(),
    },
    );
  }
}