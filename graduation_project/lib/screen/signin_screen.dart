import 'package:flutter/material.dart';
import '../widgets/sigin_screen_body.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Scaffold(
        body: SiginInScreenBody(),
      ),
    );
  }
}