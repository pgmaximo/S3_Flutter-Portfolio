import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text_animated.dart';

class HomeMenuMobile extends StatelessWidget {
  const HomeMenuMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Prazer! \nMe chamo Pedro Gabriel',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Wrap(
            children: [
              Text(
                'Sou programador ',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextoAnimado(),
            ],
          ),
          const SizedBox(height: 20), // Espaçamento para a imagem
          Center( // Centraliza a imagem
            child: Image.asset('assets/emoji.jpg', width: 350, height: 350),
          ),
        ],
      ),
    );
  }
}