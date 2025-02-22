import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recordatorios",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Welcome to",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
          ),
          Text(
            "Reminders",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
          ),
          SizedBox(height: 32),
          _iconos(
            icon: Icons.lightbulb_outline,
            titulo: 'Quick Creation',
            texto: 'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
          ),
          SizedBox(height: 16),
          _iconos(
            icon: Icons.shopping_cart_outlined,
            titulo: 'Grocery Shopping',
            texto: 'Create a Grocery List that automatically sorts items you add by category.',
          ),
          SizedBox(height: 16),
          _iconos(
            icon: Icons.people_outline,
            titulo: 'Easy Sharing',
            texto: 'Collaborate on a list, and even assign individual tasks.',
          ),
          SizedBox(height: 16),
          _iconos(
            icon: Icons.view_list_outlined,
            titulo: 'Powerful Organization',
            texto: 'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your work flow with Smart Lists.',
          ),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding horizontal para el botón
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Continue'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue)
            ),
          ),
        ],
      )
    );
  }
}

  Widget _iconos({
    required IconData icon,
    required String titulo,
    required String texto,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding para las filas
      child: Row(
        children: <Widget>[
          Icon(icon, size: 32),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titulo,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(texto),
              ],
            ),
          ),
        ],
      ),
    );
  }
  


