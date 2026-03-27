import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?) validator;

  const AuthFormField({
    required this.labelText,
    required this.prefixIcon,
    required this.controller,
    required this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        prefixIcon: Icon(prefixIcon),
      ),
      validator: validator,
    );
  }
}
