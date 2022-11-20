import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

// ignore: camel_case_types
class swiperPopulares extends StatelessWidget {

final controller = PageController(
  initialPage: 1,
  viewportFraction: 1
);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return PageView(
              controller: controller,
              children: <Widget>[_tarjeta(), _tarjeta()],
            );
          },
          itemCount: 2,
          itemWidth: 300.0,
          layout: SwiperLayout.STACK, 
          ),
    );
  }

  Widget _tarjeta() {
    return Container(
      margin: const EdgeInsets.only(left:30.0),
      alignment: AlignmentDirectional.center,
      child: Image(image: AssetImage('assets/receta1.jpg'), fit: BoxFit.fill),
    );
  }
}
