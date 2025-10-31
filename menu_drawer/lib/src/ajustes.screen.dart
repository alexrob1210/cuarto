import 'package:flutter/material.dart';
import 'navbar.dart'; // Importa el navbar

class AjustesScreen extends StatelessWidget {
  const AjustesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(), // Tiene el menú
      appBar: AppBar(
        title: const Text('Ajustes'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Página de Ajustes',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 30), // Espacio
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              child: const Text('Volver al Inicio'), // Botón
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}