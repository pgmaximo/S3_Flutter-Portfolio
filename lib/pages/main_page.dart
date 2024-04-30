import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PedroMáximo.dev', 
          textAlign: TextAlign.left, 
          style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20)),

        actions: <Widget> [
          TextButton(
            child: const Text('Home'),
            onPressed: () {
              
              }, 
          )
        ],

      ),
    );
  }
}
