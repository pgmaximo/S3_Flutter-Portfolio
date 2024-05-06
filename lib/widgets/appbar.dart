import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
String gitURL = 'https://github.com/pgmaximo';
String linURL = 'https://www.linkedin.com/in/pedro-gabriel-maximo/';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text( 
        'PedroMáximo.dev',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          fontStyle: FontStyle.italic, 
          fontSize: 20, 
          color: Color.fromARGB(1, 0, 26, 118)
        ),
      ),
      actions: [
        IconButton(
          // Rota para o site externo Github
          onPressed: () async {        
            if (await canLaunchUrl(Uri.parse(gitURL))) {
              await launchUrl(Uri.parse(gitURL));
            }
          },
          icon: const FaIcon(FontAwesomeIcons.github),
          tooltip: 'Github',
        ),
        IconButton(
          // Rota para o site externo LinkedIn
          onPressed: () async {        
            if (await canLaunchUrl(Uri.parse(linURL))) {
              await launchUrl(Uri.parse(linURL));
            }
          },
          icon: const FaIcon(FontAwesomeIcons.linkedin),
          tooltip: 'LinkedIn',
        ),
      ]
    );
  }
}