import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class swiperCategorias extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110.0,
        child: Swiper(scrollDirection:Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return PageView(
                controller: controller,
                children: <Widget>[
                  _imagenCategoria(),
                  _imagenCategoria(),
                  _imagenCategoria(),
                  _imagenCategoria()
                ],
              );
            },
            itemCount: 3,
            itemWidth: 200.0,
            layout: SwiperLayout.DEFAULT,
            pagination: SwiperPagination(),
            control: SwiperControl()
            ));
  }

  Widget _imagenCategoria() {
    return GestureDetector(
        onTap: () {
          print('Categoria');
        },
        child: Container(child: Image(image: AssetImage('assets/pizza.jpg'))));
  }
}
