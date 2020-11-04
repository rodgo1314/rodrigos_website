import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rodrigoswebsite/header/cardImageView.dart';

class Header extends StatelessWidget {
  double _sigmaX = 0; // from 0-10
  double _sigmaY = 0; // from 0-10
  double _opacity = 0.1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width< 700 ? MediaQuery.of(context).size.height/2.7 : MediaQuery.of(context).size.height/1.8,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/headerBW.jpg'),
              alignment: FractionalOffset(0,0.3),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
            child: Container(
              color: Colors.black.withOpacity(_opacity),
            ),
          ),
        )
      ],
    );
  }
}
