import 'package:flutter/material.dart';
import 'package:graduation_project/widgets/custom_text_button.dart';
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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Signin',
          style: TextStyle(
            fontSize: 60,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        // text form field of user email
        CustomTextFormField(
          labelText: 'Email',
          prefixIcon: Icons.email,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 20),
        // text form field of password
        CustomTextFormField(
          labelText: 'password',
          prefixIcon: Icons.email,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 50),
        CustomButton(text: 'Signin'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Have No Account'),
            // Text button which will navigate to the register screen
            CustomTextButton(text: 'Register'),
          ],
        ),
      ],
    );
  }
}
