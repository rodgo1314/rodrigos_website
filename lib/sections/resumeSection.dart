import 'package:flutter/material.dart';
import 'package:rodrigoswebsite/sections/timelineSection.dart';

class ResumeSection extends StatefulWidget {
  @override
  _ResumeSectionState createState() => _ResumeSectionState();
}

class _ResumeSectionState extends State<ResumeSection> {
  double sizeBasedOnWidth(BuildContext context, double small, double big ){
    return MediaQuery.of(context).size.width < 700 ? small : big;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(sizeBasedOnWidth(context, 35, 80),10 ,sizeBasedOnWidth(context, 35, 80),10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Resume",
            style: TextStyle(fontSize: sizeBasedOnWidth(context, 28, 34)),
          ),
          SizedBox(height: 50.0),
          Text(
            "Lorem ipsum dolor sit amet, communication adipisicing elit, helpful eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                "Ut enim ad minim veniam, quis nostrud sence of humour ullamco laboris nisi ut honest ea commodo consequat. Duis aute irure dolor "
                "in upper-intermediate english level velit dolore eu ivivdtevoluptatem ontend developer.",
            style: TextStyle(fontSize: sizeBasedOnWidth(context, 18, 22), color: Colors.black),

          ),
          SizedBox(height: 25.0),
          Text(
            "Education",
            style: TextStyle(fontSize: sizeBasedOnWidth(context, 18, 22),
            fontWeight: FontWeight.w400,
            color: Colors.grey),
          ),
          SizedBox(height: 25,),
          CustomTimeline()
        ],
      ),
    );
  }
}
