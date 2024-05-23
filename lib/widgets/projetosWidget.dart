import 'package:flutter/material.dart';

class ProjetosWidget extends StatelessWidget {
  final String imagemPath;
  final String titulo;
  final String descricao;
  final bool imagemEsquerda;

  const ProjetosWidget({
    super.key,
    required this.imagemPath,
    required this.titulo,
    required this.descricao,
    this.imagemEsquerda = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: imagemEsquerda ? [
          Expanded(
            flex: 1,
            child: Image.asset(imagemPath),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  descricao,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ] : [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  descricao,
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: Image.asset(imagemPath),
          ),
        ],
      ),
    );
  }
}
