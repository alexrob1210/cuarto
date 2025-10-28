import 'package:flutter/material.dart';

// La clase principal se llama BotonesPage
class BotonesPage extends StatefulWidget {
  const BotonesPage({super.key});

  @override
  State<BotonesPage> createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  int _selectedIndex = 0;

  static const List<Widget> _paginas = <Widget>[
    HomePage(),
    FavoritesPage(),
    ExitPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
        backgroundColor: Colors.teal,
      ),
      body: Center(child: _paginas.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

// --- PÁGINAS DE EJEMPLO ---

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Página de Inicio', style: TextStyle(fontSize: 24)),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Página de Favoritos', style: TextStyle(fontSize: 24)),
    );
  }
}

class ExitPage extends StatelessWidget {
  const ExitPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Página de Salir', style: TextStyle(fontSize: 24)),
    );
  }
}
