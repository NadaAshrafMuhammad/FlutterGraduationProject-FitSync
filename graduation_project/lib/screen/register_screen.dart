import 'package:flutter/material.dart';
import '../widgets/register_screen_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // When tap any place on the screen the keyboard will dismiss 
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Scaffold(
        body: RegisterScreenBody(),
      ),
    );
  }
}