import 'package:flutter/material.dart';
import 'package:rodrigoswebsite/header/cardImageView.dart';
import 'package:rodrigoswebsite/header/header.dart';
import 'package:rodrigoswebsite/header/infoColumn.dart';
import 'package:rodrigoswebsite/sections/aboutMe.dart';
import 'package:rodrigoswebsite/sections/resumeSection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Rodrigo's Website",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "Rodrigo's Website"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double sizeBasedOnWidth(BuildContext context, double small, double big){
    return MediaQuery.of(context).size.width < 700 ? small : big;
  }
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.


    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            //elevation: 8.0,
            //flexibleSpace: FlexibleSpaceBar(background: Header()),
            title: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                FlatButton(onPressed: null, child: Text('About Me')),
                FlatButton(onPressed: null, child: Text('Resume')),
                FlatButton(onPressed: null, child: Text('Portfolio')),
                FlatButton(onPressed: null, child: Text('Socials')),
              ],
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              Stack(
                children: [
                  Column(
                    children: [
                      Header(),
                      AboutMe(),
                      Divider(
                        thickness: 2,
                      ),
                      ResumeSection()
                    ],
                  ),
                  // this is on top of everything
                  Positioned(
                    left: sizeBasedOnWidth(context, 50, 100),
                    top: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CardImageView(),
                        SizedBox(width: sizeBasedOnWidth(context, 40 , 70),),
                        InfoColumn(),
                      ],
                    ),
                  )
                ],
              )
            ]),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
