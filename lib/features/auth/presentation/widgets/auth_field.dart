import 'package:flutter/material.dart';
class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  const AuthField({super.key, this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is missing!';
        }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        hintText:hintText )
    );
  }
}