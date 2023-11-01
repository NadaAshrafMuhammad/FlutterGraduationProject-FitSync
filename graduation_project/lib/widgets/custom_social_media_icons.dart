import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class CustomSocialMediaIcons extends StatelessWidget {
  final Function onPressedGoogle;
  final Function onPressedFacebook;

  const CustomSocialMediaIcons({
    super.key, 
    required this.onPressedGoogle,
    required this.onPressedFacebook,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SignInButton(
          Buttons.Google,
          onPressed: onPressedGoogle,
        ),
        SignInButton(
          Buttons.Facebook,
          onPressed: onPressedFacebook,
        ),
      ],
    );
  }
}
