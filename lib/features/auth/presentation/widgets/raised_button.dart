import 'package:blog/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  final String text;
   const RaisedButton({super.key ,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppPallete.gradient1,
          AppPallete.gradient2
        ]),
        color: Colors.transparent,
      ),
      child: ElevatedButton(
        onPressed: (){},
        child:Text(text),
      ),
    );
  }
}