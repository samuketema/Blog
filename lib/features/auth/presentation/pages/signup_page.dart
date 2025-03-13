import 'package:blog/core/theme/app_pallete.dart';
import 'package:blog/features/auth/presentation/pages/login.dart';
import 'package:blog/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog/features/auth/presentation/widgets/raised_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static  route() => MaterialPageRoute(builder: (context) =>SignupPage());
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
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
                "Sign Up.",
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
              RaisedButton(text: "Sign Up",
              onPressed: () {
                
              },),
              SizedBox(height: 10),
              GestureDetector(
                onTap: (){Navigator.of(context).push(LoginPage.route());},
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: "Sign In",
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
