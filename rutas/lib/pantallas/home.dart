import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Home")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(context, "/profile");
              },
              child: const Text("Next"),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "7");
              },
              child: const Text("Log out"),
            ),
          ],
        ),
      ),
    );
  }
}
