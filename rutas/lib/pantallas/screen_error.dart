import 'package:flutter/material.dart';

class ScreenError extends StatelessWidget {
  const ScreenError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("scree error")),
      body: Center(child: Text("Scree Not Error")), // Center
    ); // Scaffold
  }
}
