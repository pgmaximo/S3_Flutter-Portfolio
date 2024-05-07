import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextoAnimado extends StatefulWidget {
  const TextoAnimado({super.key});

  @override
  State<TextoAnimado> createState() => _TextoAnimadoState();
}

class _TextoAnimadoState extends State<TextoAnimado> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
        'Flutter',
        textStyle: const TextStyle(fontSize: 52, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TyperAnimatedText(
        'Python',
        textStyle: const TextStyle(fontSize: 52, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TyperAnimatedText(
        'HTML',
        textStyle: const TextStyle(fontSize: 52, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TyperAnimatedText(
        'CSS',
        textStyle: const TextStyle(fontSize: 52, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TyperAnimatedText(
        'Freelancer',
        textStyle: const TextStyle(fontSize: 52, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
      ],
      pause: const Duration(milliseconds: 2000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}