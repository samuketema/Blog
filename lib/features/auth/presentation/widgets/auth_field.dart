import 'package:flutter/material.dart';
class AuthField extends StatelessWidget {
  String? hintText;
   AuthField({super.key, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText:hintText )
    );
  }
}