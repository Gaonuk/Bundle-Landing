import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;
  SocialIcon({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF476DAE).withOpacity(.3),
              offset: Offset(0, 10),
              blurRadius: 10,
            )
          ]),
      child: Center(
        child: FaIcon(
          icon,
          color: Color(0xFFD5D3ee),
        ),
      ),
    );
  }
}
