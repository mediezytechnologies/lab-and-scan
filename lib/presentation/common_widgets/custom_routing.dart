import 'package:flutter/material.dart';


class CustomPageRoute extends PageRouteBuilder {
  final Widget route;
  final AxisDirection direction;
  CustomPageRoute({required this.route, this.direction = AxisDirection.right})
      : super(
            transitionDuration: const Duration(microseconds: 1000),
            pageBuilder: (context, animation, secondaryAnimation) => route);
  Widget buildTranditions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      FadeTransition(
        opacity: animation,
        child: route,
 
      );
}
/////