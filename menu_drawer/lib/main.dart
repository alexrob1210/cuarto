import 'package:flutter/material.dart';
import 'package:menu_drawer/src/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Navbar(),
        appBar: AppBar(
          title: const Text('Navegacion de drawer app'),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Text("Paginan principal", style: TextStyle(fontSize: 50.0)),
        ),
      ),
    );
  }
}
