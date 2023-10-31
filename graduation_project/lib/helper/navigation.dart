import 'package:flutter/material.dart';

class Navigation {
  static void pushNavigation(BuildContext context, {required Widget screen}) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (
          _, // this is the context place but we do not need it
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) => screen,
        transitionsBuilder: (
          _, 
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
      ),
    );
  }
}
