// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Importe o pacote url_launcher para abrir links

class ProjetoCard extends StatelessWidget {
  final Map<String, String> projeto;

  const ProjetoCard({super.key, required this.projeto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final url = projeto['link']!;
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              projeto['imagemPath']!,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projeto['titulo']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    projeto['descricao']!,
                    style: const TextStyle(fontSize: 14),
                    maxLines: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
