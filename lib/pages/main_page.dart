import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

String gitURL = 'https://github.com/pgmaximo';
String linURL = 'https://www.linkedin.com/in/pedro-gabriel-maximo/';

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
          style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20),
        ),
        actions: [
          IconButton(
            onPressed: () async {        
              if (await canLaunchUrl(gitURL as Uri)) {
                await launchUrl(gitURL as Uri);
              } else {
                print('Could not launch URL: $gitURL');
              }
            },
            icon: const FaIcon(FontAwesomeIcons.github),
            tooltip: 'Github',
          ),
          IconButton(
            onPressed: () {

            },
            icon: const FaIcon(FontAwesomeIcons.linkedin),
            tooltip: 'LinkedIn',
          ),
        ]
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            //Menu
            Container(
              
            ),
            //Sobre mim
            Container(
              
            ),
            //Projetos
            Container(
              
            ),
            //Contatos
            Container(
              
            ),
          ],
        ),
      )
    );
  }
}