import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*IMPORT DAS PAGINAS DO FLUTTER*/
import 'package:portfolio/widgets/appbar.dart';
import 'package:portfolio/widgets/components/contato.dart';
import 'package:portfolio/widgets/components/home.dart';
import 'package:portfolio/widgets/components/projetos.dart';
import 'package:portfolio/widgets/components/sobremim.dart';

// Classe da pagina principal
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const MyAppBar(),
    
      body: ListView(
        children: const [
          Column(
            children: [
              HomeMenu(),
              SobreMim(),
              Projetos(),
              Contato(),
            ],
          ),
        ],
      )
    );
  }
}