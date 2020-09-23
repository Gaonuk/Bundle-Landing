import 'package:flutter/material.dart';
import 'package:landing/widgets/responsiveWidget.dart';
import 'package:landing/extensions/hover_extensions.dart';

class NavBar extends StatelessWidget {
  final navItems = ["Proyectos", "Programadores", "Contacto"];

  List<Widget> navItem() {
    return navItems
        .map((item) => Padding(
              padding: EdgeInsets.only(right: 60),
              child: FlatButton(
                child: Text(
                  item,
                ).colorOnHover,
                hoverColor: Colors.transparent,
                onPressed: () => print('hello'),
              ).moveUpOnHover,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ResponsiveWidget.isSmallScreen(context) ? 40 : 130,
        right: ResponsiveWidget.isSmallScreen(context) ? 40 : 130,
        top: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 180,
            height: 40,
            margin: EdgeInsets.all(10),
            child: Image.asset(
              "../../assets/images/logo.png",
              fit: BoxFit.cover,
            ),
          ),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...navItem()]..add(
                  Container(
                    width: 120,
                    height: 40,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFF38705),
                            Color(0xFFffb41f),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF476DAE).withOpacity(.3),
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ]),
                    child: Center(
                        child: FlatButton(
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontFamily: "RobotoMono",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            onPressed: () => print('entrar'))),
                  ).moveUpOnHover,
                ),
            )
        ],
      ),
    );
  }
}
