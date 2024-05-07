import 'dart:js';

import 'package:flutter/material.dart';
import 'package:portfolio/breakpoints.dart';
import 'package:portfolio/widgets/appbar.dart';
import 'package:portfolio/widgets/components/contato.dart';
import 'package:portfolio/widgets/components/home.dart';
import 'package:portfolio/widgets/components/projetos.dart';
import 'package:portfolio/widgets/components/sobremim.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(


      builder:(context, constraints) {
        return const Scaffold(
          appBar: MyAppBar(),

          body: SingleChildScrollView(
            child: Column(
              children: [
                HomeMenu(),
                SobreMim(),
                Projetos(),
                Contato(),
              ],
            ),
          )
        );
      },
    );
  }
}