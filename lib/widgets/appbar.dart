import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
String gitURL = 'https://github.com/pgmaximo';
String linURL = 'https://www.linkedin.com/in/pedro-gabriel-maximo/';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text( 
        'PedroMaximo.dev',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Color.fromARGB(255, 0, 26, 118)
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          // Rota para o site externo Github
          onPressed: () async {        
            if (await canLaunchUrl(Uri.parse(gitURL))) {
              await launchUrl(Uri.parse(gitURL));
            }
          },
          icon: const FaIcon(FontAwesomeIcons.github), color: const Color.fromARGB(255, 0, 26, 118), iconSize: 40,
          tooltip: 'Github',
        ),
        IconButton(
          // Rota para o site externo LinkedIn
          onPressed: () async {        
            if (await canLaunchUrl(Uri.parse(linURL))) {
              await launchUrl(Uri.parse(linURL));
            }
          },
          icon: const FaIcon(FontAwesomeIcons.linkedin), color: const Color.fromARGB(255, 0, 26, 118), iconSize: 40,
          tooltip: 'LinkedIn',
        ),
      ]
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}