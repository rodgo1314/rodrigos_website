import 'package:flutter/material.dart';

class CardImageView extends StatefulWidget {
  @override
  _CardImageViewState createState() => _CardImageViewState();
}

class _CardImageViewState extends State<CardImageView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        width: MediaQuery.of(context).size.width / 4.2,
        height:  (MediaQuery.of(context).size.width < 700 ? 225 : MediaQuery.of(context).size.height / 2.1),
        child: ClipRRect(
          borderRadius: BorderRadius.all( Radius.circular(10.0)),
          clipBehavior: Clip.antiAlias,
          child: Material(
            elevation: 18.0,
            child: Image.asset(
              "images/profile_image.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
