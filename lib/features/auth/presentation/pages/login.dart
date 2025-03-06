import 'package:blog/core/theme/app_pallete.dart';
import 'package:blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog/features/auth/presentation/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key:formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log In.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),
              SizedBox(height:20),
              AuthField(hintText: 'name',
              controller: nameController,),
              SizedBox(height: 20),
              AuthField(hintText: 'email',controller: emailController,),
              SizedBox(height: 20),
              AuthField(hintText: 'Password',controller: passwordController,),
              SizedBox(height: 20),
              RaisedButton(text: "Log In"),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>LoginPage()));},
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: AppPallete.gradient2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
