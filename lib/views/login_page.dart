
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/helpers/constants.dart';
import 'package:flutter_tutorial/helpers/validators.dart';
import 'package:flutter_tutorial/widgets/custome_button.dart';
import 'package:flutter_tutorial/widgets/custome_card.dart';

import '../config/routes.dart';
import '../models/login_models.dart';
import '../widgets/custome_text_filed.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController pohneController = TextEditingController();


  void _login() {
    if (_formKey.currentState!.validate()) {
      UserModel user = UserModel(
        id: '1', // This would typically come from your authentication logic
        username: emailController.text,
        password: passwordController.text,
         pohne: passwordController.text,
      );

     // // Navigate to HomeScreen and pass the user model
     //  Navigator.push(
     //    context,
     //    MaterialPageRoute(
     //      builder: (context) => Home1Page(),
     //    ),
     //  );
      // You can add your login logic here
      RouterManager.navigateTo(providerRoute); // Navigate to third page

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 10.5),
        child: CustomCard(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  controller: emailController,
                  labelText: 'Email',
                  obscureText: false,
                  validator: validateEmail,
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  obscureText: true,
                  validator: validatePassword,
                ),
                 CustomTextField(
                  controller: pohneController,
                  labelText: 'Pohnre',
                  obscureText: false,
                  validator: validatePassword,
                ),
                const SizedBox(height: 24),
                CustomGradientButton(
                    text: "Login",
                    onPressed: _login),
              ],
            ),
          ),
        ),
      ),
    );
  }
}