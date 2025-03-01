import 'package:blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sign Up." , style:TextStyle(fontWeight: FontWeight.bold,fontSize: 27),),
            SizedBox(height: 20,),
            AuthField(hintText: 'email',),
            SizedBox(height: 20,),
            AuthField(hintText: 'Password',),
            
          ],
        ),
      ),
    );
  }
}