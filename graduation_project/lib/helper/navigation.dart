import 'package:flutter/material.dart';

class Navigation {
  static void pushNavigation(BuildContext context, {required Widget screen}) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionsBuilder: (
          BuildContext context, 
          Animation<double> animation, 
          Animation<double> secondaryAnimation, 
          child, // this is the screen  which we will navigate to
        ) => FadeTransition(
          opacity: Tween<double>(begin: 0.1, end: 1).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            ),
          ),
          child: child,
        ),
        pageBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) => screen,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }
}
