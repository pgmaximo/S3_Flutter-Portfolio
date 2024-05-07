import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/widgets/TextAnimated.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _MenuState();
}

class _MenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Prazer! Pedro Gabriel na área!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
                ),
                Row(
                  children: [
                    Text(
                      'Sou programador ',
                      style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold),
                    ),
                    TextoAnimado()
                  ],
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: Center(
            child: SizedBox(
              child: Image.asset(
                'assets/emoji.jpg',
                width: 350,
              )
            ),
          ),
        )
      ],
    );
  }
}
