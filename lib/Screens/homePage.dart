import 'dart:html';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:landing/widgets/mainButton.dart';
import 'package:landing/widgets/navBar.dart';
import 'package:landing/widgets/platform_svg.dart';
import 'package:landing/widgets/responsiveWidget.dart';
import 'package:landing/widgets/socialIcon.dart';
import 'package:landing/extensions/hover_extensions.dart';

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // This method is rerun every time setState is called, for instance as done
  // by the _incrementCounter method above.
  //
  // The Flutter framework has been optimized to make rerunning build methods
  // fast, so that you can just rebuild anything that needs updating rather
  // than having to individually change instances of widgets.
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 246, 244, 1),
      body: Stack(
        children: <Widget>[
          PlatformSvg.asset("../../assets/images/back2.svg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill),
          Align(
            alignment: Alignment.centerRight,
            child: CustomPaint(
              // painter: Shape(),
              child: Container(
                width: w,
                height: h,
              ),
            ),
          ),
          Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            children: <Widget>[
              NavBar(),
              SizedBox(
                height: 60,
              ),
              Body(),
            ],
          )
        ],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(largeScreen: LargeScreen());
  }
}

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 120),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "¿Qué hacemos?",
                style: TextStyle(
                    fontSize: 80,
                    color: Color.fromRGBO(255, 180, 31, 1),
                    fontFamily: "RobotoMono",
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 550,
                ),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "Nuestro proposito es ayudar a ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF476DAE),
                          fontFamily: "Raleway"),
                    ),
                    TextSpan(
                      text: "Startups",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF476DAE),
                          fontFamily: "RobotoMono"),
                    ),
                    TextSpan(
                      text: " y ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF476DAE),
                          fontFamily: "Raleway"),
                    ),
                    TextSpan(
                      text: "PYMEs ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF476DAE),
                          fontFamily: "RobotoMono"),
                    ),
                    TextSpan(
                      text:
                          "en sus primeros pasos, al mismo tiempo que le damos la oportunidad a ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF476DAE),
                          fontFamily: "Raleway"),
                    ),
                    TextSpan(
                      text: "Programadores ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF476DAE),
                          fontFamily: "RobotoMono"),
                    ),
                    TextSpan(
                      text:
                          "principiantes de probar sus habilidades con desafios del mundo real asi ambas partes se ven benficiadas y creamos un lazo que los mantenga unidos",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF476DAE),
                          fontFamily: "Raleway"),
                    ),
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  MainButton(
                    text: "Empezar!",
                    colors: [
                      Color(0xFFF38705),
                      Color(0xFFffb41f),
                    ],
                    isOnLight: false,
                  ).moveUpOnHover,
                  SizedBox(
                    width: 40,
                  ),
                  MainButton(
                    text: "Watch Now",
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                    isOnLight: true,
                  ).moveUpOnHover
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                children: <Widget>[
                  SocialIcon(
                    icon: FontAwesomeIcons.instagram,
                  ).moveUpOnHover,
                  SocialIcon(
                    icon: FontAwesomeIcons.github,
                  ).moveUpOnHover,
                  SocialIcon(
                    icon: FontAwesomeIcons.facebook,
                  ).moveUpOnHover,
                  SocialIcon(
                    icon: FontAwesomeIcons.twitter,
                  ).moveUpOnHover
                ],
              )
            ],
          ),
          PlatformSvg.asset("../../assets/images/teamwork.svg",
              fit: BoxFit.cover,
              width: 800,
              height: 800,
              color: Color(0xFFffb41f))
          // Image.asset(
          //   "../../assets/images/meeting.png",
          //   width: 800,
          //   fit: BoxFit.cover,
          // )
          // Image.asset("../../assets/images/team_collaboration.svg")
        ],
      ),
    );
  }
}
