import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("Login")),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context,"/home");
          },
          child: Text("login In"),
        ), // ElevatedButton
      ), // Center
    ); // Scaffold
  }
}
