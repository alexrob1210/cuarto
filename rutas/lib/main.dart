import 'package:flutter/material.dart';
import 'package:rutas/pantallas/home.dart';
import 'package:rutas/pantallas/login.dart';
import 'package:rutas/pantallas/profile.dart';
import 'package:rutas/pantallas/screen_error.dart';
import 'package:rutas/pantallas/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.blue),
      //Iniciar el codigo para generar rutas
      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/home": (context) => Home(),
        "/profile": (context) => Profile(),
        "/profile/settings": (context) => Settings(),
      },
      onGenerateRoute: (settings) {
        MaterialPageRoute(builder: (context) => ScreenError());
      },
    );
  }
}
