import 'package:flutter/material.dart';

/*IMPORT DAS PAGINAS DO FLUTTER*/
import 'package:portfolio/widgets/appbar.dart';
import 'package:portfolio/widgets/sections/home_section/home_desktop.dart';
import 'package:portfolio/widgets/sections/home_section/home_mobile.dart';
import 'package:portfolio/widgets/sections/contato.dart';
import 'package:portfolio/widgets/sections/projetos.dart';
import 'package:portfolio/widgets/sections/sobre_mim.dart';

// Classe da pagina principal
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
        const breakpointMobile = 600;

    return  LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.white,
        
          appBar: const MyAppBar(),
        
          body: ListView(
            children: [
               constraints.maxWidth < breakpointMobile
                ? const HomeMenuMobile()
                : const HomeMenuDesktop(),
              const SizedBox(height: 20,),
              const SobreMim(),
              const SizedBox(height: 20,),
              const Projetos(),
              const SizedBox(height: 20,),
              const Contato(),
            ],
          ),
        );
      }
    );
  }
}