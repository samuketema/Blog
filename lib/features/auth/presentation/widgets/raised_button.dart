import 'package:blog/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  final String text;
  const RaisedButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [AppPallete.gradient1, AppPallete.gradient2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(395, 55),
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor,
        ),
        onPressed: () {},
        child: Text(text, style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
