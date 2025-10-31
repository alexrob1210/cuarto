import 'package:flutter/material.dart';



class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Quita cualquier padding del ListView
        padding: EdgeInsets.zero, 
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Alex Zaruma"),
            accountEmail: const Text("arszaruma@yavirac.edu.ec"),
            currentAccountPicture: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
                Navigator.pushReplacementNamed(context, '/perfil'); 
              },
              child: const CircleAvatar(
                child: ClipOval(child: Image(image: AssetImage("images/hombre.jpg"))),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage("images/pared.jpg"),
                fit: BoxFit.cover,
              ),
            ), // BoxDecoration
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Inicio"),
            onTap: () {
              Navigator.pop(context); // Cierra el drawer
              Navigator.pushReplacementNamed(context, '/inicio');
            },
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text("Buscar"),
            onTap: () {
              Navigator.pop(context); // Cierra el drawer
              Navigator.pushReplacementNamed(context, '/buscar');
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Notificacion"),
            onTap: () {
              Navigator.pop(context); // Cierra el drawer
              Navigator.pushReplacementNamed(context, '/notificaciones');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Ajustes"),
            onTap: () {
               Navigator.pop(context); // Cierra el drawer
              Navigator.pushReplacementNamed(context, '/ajustes');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text("Perfil"),
            onTap: () {
               Navigator.pop(context); 
              Navigator.pushReplacementNamed(context, '/perfil');
            },
          ),
          const Divider(), // Un separador visual
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text("Salir"),
            onTap: () {
              Navigator.pop(context); // Solo cierra el drawer
            },
          ),
        ],
      ),
    );
  }
}