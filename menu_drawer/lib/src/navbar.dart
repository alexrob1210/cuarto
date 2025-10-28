import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Alex Zaruma"),
            accountEmail: Text("arszaruma@yavirac.edu.ec"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset("images/hombre.jpg")),
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: AssetImage("images/pared.jpg"),
                fit: BoxFit.cover,
              ),
            ), // BoxDecoration
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text("Inicio"),
            onTap: () => print("Inicial proceso"),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Buscar"),
            onTap: () => print("Buscar archivo"),
          ),
          ListTile(
            leading: Icon(Icons.notification_add),
            title: Text("Notificacion"),
            onTap: () => print("Notificaciones"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Siguiente"),
            onTap: () => print("Inicial proceso"),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text("Inicio"),
            onTap: () => print("Inicial proceso"),
          ),
        ],
      ),
    );
  }
}
