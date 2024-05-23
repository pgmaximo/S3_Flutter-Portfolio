import 'package:flutter/material.dart';
import 'package:portfolio/widgets/projetosWidget.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de projetos
    final List<Map<String, String>> listaProjetos = [
      {
        'imagemPath': 'assets/projeto1.png',
        'titulo': 'Code Quest',
        'descricao': 'Projeto integrador do 1º semestre, eu e meu grupo criamos um jogo com princípios de ajudar estudantes a aprender programação.\n\nFoi usado as linguagens: Java e SQL',
      },
      {
        'imagemPath': 'assets/projeto2.png',
        'titulo': 'APAE',
        'descricao': 'Projeto integrador do 2º semestre, eu e meu grupo criamos um sistema de cadastro de usuários e área de doação via pix para a Associação de Pais e Amigos dos Excepcionais.\n\nFoi usado as linguagens: HTML, CSS, Javascript, SQL e Python',
      },
      {
        'imagemPath': 'assets/projeto3.png',
        'titulo': 'Sua Saúde',
        'descricao': 'Projeto integrador do 3º semestre, eu e meu grupo estamos criando um software para o Instituto São Camilo, para a anotação pessoal sobre a saúde dos usuários.\n\nFoi usado as linguagens: Flutter, Firebase e Azure',
      },
      {
        'imagemPath': 'assets/projeto4.png',
        'titulo': 'Cronômetro em ESP32',
        'descricao': 'Projeto para a organização do Maua Racing, onde eu criei um cronômetro para o carro usando o ESP32 e sensores vermelhos.\n\nFoi usado as linguagens: C/C#',
      },
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: listaProjetos.asMap().entries.map((entry) {
          int index = entry.key;
          Map<String, String> projeto = entry.value;
          return ProjetosWidget(
            imagemPath: projeto['imagemPath']!,
            titulo: projeto['titulo']!,
            descricao: projeto['descricao']!,
            imagemEsquerda: index % 2 == 0,
          );
        }).toList(),
      ),
    );
  }
}
