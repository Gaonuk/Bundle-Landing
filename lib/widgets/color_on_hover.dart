import 'package:flutter/material.dart';

class ColorOnHover extends StatefulWidget {
  final Widget child;

  ColorOnHover({Key key, this.child}) : super(key: key);

  @override
  _ColorOnHoverState createState() => _ColorOnHoverState();
}

class _ColorOnHoverState extends State<ColorOnHover> {
  final nonHoverColor = Color(0xFF082235);
  final hoverColor = Color(0xFFFFB41F);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (event) => _mouseEnter(false),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          child: widget.child,
          style: _hovering
              ? TextStyle(
                  fontFamily: "RobotoMono",
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFFFB41F))
              : TextStyle(
                  fontFamily: "RobotoMono",
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF082235)),
        ));
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}
