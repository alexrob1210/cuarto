import 'package:flutter/material.dart';

// --- (PASO 1) AÑADIMOS EL IMPORT DEL NAVBAR ---
// La nueva HomePage (tu "Paginan principal") también
// necesita mostrar el menú lateral.
import 'package:menu_drawer/src/navbar.dart'; 

// Tus importaciones de las 5 pantallas (con punto)
import 'package:menu_drawer/src/inicio.screen.dart';
import 'package:menu_drawer/src/buscar.screen.dart';
import 'package:menu_drawer/src/notificaciones.screen.dart';
import 'package:menu_drawer/src/ajustes.screen.dart';
import 'package:menu_drawer/src/perfil.screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegacion de drawer app',
      
      initialRoute: '/inicio', // Empezamos en Inicio

      // El mapa de rutas
      routes: {
        
        // --- (PASO 2) AÑADIMOS LA RUTA PRINCIPAL ---
        // Esta es la ruta que buscan los botones "Volver al Inicio".
        // Apunta a la clase HomePage que definimos abajo.
        '/': (context) => const HomePage(), 
        
        // Tus rutas actuales
        '/inicio': (context) => const InicioScreen(),
        '/buscar': (context) => const BuscarScreen(),
        '/notificaciones': (context) => const NotificacionesScreen(),
        '/ajustes': (context) => const AjustesScreen(),
        '/perfil': (context) => const PerfilScreen(),
      },
    );
  }
}


// --- (PASO 3) AÑADIMOS LA CLASE DE TU "PAGINAN PRINCIPAL" ---
// No necesitas un archivo nuevo, la ponemos aquí mismo.
// Esta es la pantalla que se verá cuando presiones "Volver al Inicio".

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(), // Le ponemos el menú
      appBar: AppBar(
        title: const Text('Página Principal'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text(
          'Paginan principal', // El texto de tu pantalla original
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}
