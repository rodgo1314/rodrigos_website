import 'package:flutter/material.dart';
import 'dart:html' as html;

class InfoColumn extends StatefulWidget {
  @override
  _InfoColumnState createState() => _InfoColumnState();
}

class _InfoColumnState extends State<InfoColumn> {

  double sizeBasedOnWidth(BuildContext context, double small, double big ){
    return MediaQuery.of(context).size.width < 700 ? small : big;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Rodrigo Leyva",
            style: TextStyle(fontSize: sizeBasedOnWidth(context, 22, 34), color: Colors.white),
          ),
          Text(
            "Mobile Developer, iOS Engineer",
            style: TextStyle(fontSize: sizeBasedOnWidth(context, 15, 22), color: Colors.white),
          ),
          SizedBox(
            height: sizeBasedOnWidth(context, 25, 50),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PHONE:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: sizeBasedOnWidth(context, 14, 20),
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "EMAIL:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: sizeBasedOnWidth(context, 14, 20),
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Location:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: sizeBasedOnWidth(context, 14, 20),
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: sizeBasedOnWidth(context, 10, 50),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "(661) 878 - 6437",
                    style: TextStyle(
                      fontSize: sizeBasedOnWidth(context, 14, 20),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "leyva.rodrigoismael@gmail.com",
                    style: TextStyle(
                      fontSize: sizeBasedOnWidth(context, 14, 20),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "San Francisco, CA",
                    style: TextStyle(
                      fontSize: sizeBasedOnWidth(context, 14, 20),
                      color: Colors.white,
                    ),
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
