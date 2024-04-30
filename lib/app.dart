import 'package:flutter/material.dart';
import 'package:portfolio/pages/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  //Criação do APP
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
