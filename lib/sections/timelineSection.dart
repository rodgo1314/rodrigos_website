import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimeline extends StatefulWidget {
  @override
  _CustomTimelineState createState() => _CustomTimelineState();
}

class _CustomTimelineState extends State<CustomTimeline> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TimelineTile(
          alignment: TimelineAlign.start,
          indicatorStyle: IndicatorStyle(
            width: 30,
            color: Colors.deepPurpleAccent,
          ),
          beforeLineStyle: LineStyle(color: Colors.deepPurpleAccent),
          isFirst: true,
          endChild: Row(
            children: [
              SizedBox(width: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "University of California, Irvine",
                    style: TextStyle(fontSize: 18, color: Colors.deepPurpleAccent),
                  ),
                  Text(
                    "Class of 2020",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
        TimelineTile(
          alignment: TimelineAlign.start,
          hasIndicator: false,
        )
      ],
    );
  }
}
