import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text(
          'Register',
          style: TextStyle(
            fontSize: 60,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        // text form field of user email
        const CustomTextFormField(
          labelText: 'Email',
          prefixIcon: Icons.email,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 20),
        // text form field of username
        const CustomTextFormField(
          labelText: 'Username',
          prefixIcon: Icons.person,
        ),
        const SizedBox(height: 20),
        // text form field of password
        const CustomTextFormField(
          labelText: 'Password',
          prefixIcon: Icons.key_rounded,
          obscureText: true,
        ),
        const SizedBox(height: 50),
        CustomButton(
          text: 'Register',
          onPressed: () {
            // TODO here add function for register screen
          },
        ),
      ],
    );
  }
}
