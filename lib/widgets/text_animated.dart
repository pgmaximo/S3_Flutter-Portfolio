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
        TypewriterAnimatedText(
        'FLUTTER',
        speed: const Duration(milliseconds: 400),
        textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TypewriterAnimatedText(
        'PYTHON',
        speed: const Duration(milliseconds: 400),
        textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TypewriterAnimatedText(
        'HTML',
        speed: const Duration(milliseconds: 400),
        textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TypewriterAnimatedText(
        'CSS',
        speed: const Duration(milliseconds: 400),
        textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TypewriterAnimatedText(
        'REACT',
        speed: const Duration(milliseconds: 400),
        textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
        TypewriterAnimatedText(
        'Freelancer',
        speed: const Duration(milliseconds: 400),
        textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 26, 118)),
        ),
      ],
      pause: const Duration(milliseconds: 0),
      repeatForever: true,
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
  }
}