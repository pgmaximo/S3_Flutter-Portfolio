import 'package:flutter/material.dart';
import 'package:portfolio/widgets/appbar.dart';
import 'package:portfolio/widgets/section/home.dart';
import 'package:portfolio/widgets/section/projetos.dart';
import 'package:portfolio/widgets/section/sobremim.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: MyAppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeMenu(),
            SobreMim(),
            Projetos(),
            // Contato(),
          ],
        ),
      )
    );
  }
}