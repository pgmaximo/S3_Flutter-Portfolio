import 'package:flutter/material.dart';
import 'package:portfolio/utils/info_projetos.dart';
import 'package:portfolio/widgets/projeto_card.dart'; // Importe o arquivo de dados dos projetos

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'PROJETOS',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 26, 118),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: listaProjetos.map((projeto) {
                return SizedBox(
                  width: 500,
                  child: ProjetoCard(projeto: projeto),
                );
              }).toList(),
            ),
          ), 
        ],
      ),
    );
  }
}
