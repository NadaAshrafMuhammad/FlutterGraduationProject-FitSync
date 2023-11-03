import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final Widget? suffixIcon;
  final IconData prefixIcon;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    this.keyboardType,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: const TextStyle(
          color: Colors.purple,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.purple,
          ),
          border: customBorder(Colors.purple),
          errorBorder: customBorder(Colors.red),
          enabledBorder: customBorder(Colors.purple),
          focusedBorder: customBorder(Colors.purple),
          suffixIcon: suffixIcon,
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}

InputBorder customBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: color,
    ),
  );
}
