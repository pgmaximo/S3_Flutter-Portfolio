import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text_animated.dart';

class HomeMenuDesktop extends StatelessWidget {
  const HomeMenuDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Venha me conhcer!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Wrap(
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
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('assets/emoji.jpg', height: 300, width: 300),
          ),
        ],
      ),
    );
  }
}