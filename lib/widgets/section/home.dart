import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _MenuState();
}

class _MenuState extends State<HomeMenu> {
  // final larguraTela = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1400,
      height: 300,
      child: Container(
        child: const Column (
          children: [          
            Text(
              'Prazer! Sou o Pedro Gabriel,',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
            ),
            Text(
              'Sou programador ', // Adicionar a mudança da palavra
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),

            // Na area direita

          ],
        ),
      )
    );
  }
}