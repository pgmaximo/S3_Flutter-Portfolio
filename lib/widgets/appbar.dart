import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final GlobalKey menuId;
  final GlobalKey sobremimId;
  final GlobalKey projetosId;
  final GlobalKey contatosId;

  const MyAppBar({
    super.key,
    required this.menuId,
    required this.sobremimId,
    required this.projetosId,
    required this.contatosId,
  });

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 2),
      curve: Curves.linear,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'PedroMáximo.dev',
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20),
      ),
      actions: [
        GestureDetector(
          onTap: () => scrollToSection(menuId),
          child: const Text('Menu'),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () => scrollToSection(sobremimId),
          child: const Text('Sobre mim'),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () => scrollToSection(projetosId),
          child: const Text('Projetos'),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () => scrollToSection(contatosId),
          child: const Text('Contatos'),
        ),
      ],
    );
  }
}
