import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/pages/main_page.dart';

final fonte = ThemeData(
  textTheme: GoogleFonts.interTextTheme(),
);

class App extends StatelessWidget {
  const App({super.key});

  //Criação do APP
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      theme: fonte,
      debugShowCheckedModeBanner: false,
    );
  }
}
