import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  double sizeBasedOnWidth(BuildContext context, double small, double big ){
    return MediaQuery.of(context).size.width < 700 ? small : big;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(sizeBasedOnWidth(context, 35, 80),sizeBasedOnWidth(context, 35, 80),sizeBasedOnWidth(context, 35, 80),10),
      //height: MediaQuery.of(context).size.height -
         // (MediaQuery.of(context).size.height / 3),
      color: Colors.white,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "About Me",
            style: TextStyle(fontSize: sizeBasedOnWidth(context, 28, 34)),
          ),
          SizedBox(height: 50.0),
          Text(
            "I am Junior Web developer able to build a Web presence from the ground up - from concept, navigation, layout and programming to UX and SEO. Skilled at writing well-designed, testable and efficient code using current best practices in Web development. Fast learner, hard worker and team player who is proficient in an array of scripting languages and multimedia Web tools.",
            style: TextStyle(fontSize: sizeBasedOnWidth(context, 18, 22), color: Colors.black),
          ),
          SizedBox(
            height: 50,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: RaisedButton(
              color: Colors.deepPurpleAccent,
              onPressed: null,
              child: Text(
                "Download Resume",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
