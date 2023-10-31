import 'package:flutter/material.dart';
import 'package:graduation_project/screen/register_screen.dart';
import '../helper/navigation.dart';
import 'custom_text_button.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class SiginInScreenBody extends StatefulWidget {
  const SiginInScreenBody({super.key});

  @override
  State<SiginInScreenBody> createState() => _SiginInScreenBodyState();
}

class _SiginInScreenBodyState extends State<SiginInScreenBody> {
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text(
          'Signin',
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
        // text form field of password
        const CustomTextFormField(
          labelText: 'password',
          prefixIcon: Icons.email,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 50),
        const CustomButton(text: 'Signin'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Have No Account'),
            // Text button which will navigate to the register screen
            CustomTextButton(
              text: 'Register',
              onPressed: () {
                // class was created in helper folder
                Navigation.pushNavigation(context, screen: const RegisterScreen());
              },
            ),
          ],
        ),
      ],
    );
  }
}
