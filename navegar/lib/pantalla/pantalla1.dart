import 'package:flutter/material.dart';
import 'package:navegar/pantalla/pantalla2.dart'; // Esta línea es inferida por el uso de PantallaDos y la estructura de archivos

class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pantalla uno")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PantallaDos()),
            );
          },
          child: Text("Ir Pantalla Dos"),
        ), // ElevatedButton
      ), // Center
    ); // Scaffold
  }
}
