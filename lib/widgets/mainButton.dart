import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainButton extends StatelessWidget {
  final List<Color> colors;
  final String text;
  final bool isOnLight;

  MainButton({this.colors, this.text, this.isOnLight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 50,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF476DAE).withOpacity(.3),
              offset: Offset(0, 8),
              blurRadius: 8,
            )
          ]),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isOnLight
                ? Icon(
                    Icons.play_circle_filled,
                    color: Color(0xFFB0BFDE),
                  )
                : Icon(
                    FontAwesomeIcons.rocket,
                    color: Colors.white,
                  ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16,
                  color: isOnLight ? Color(0xFFD5D3ee) : Colors.white,
                  fontFamily: "RobotoMono",
                  letterSpacing: 1,
                  fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
