import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Profile")),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pushNamed(context, "/profile/settings");
          },
          child: Text("Next"),
        ), // ElevatedButton
      ), // Center
    ); // Scaffold
  }
}
