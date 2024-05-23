import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imagensLinguagens = [
  'assets/bootstrap.png',
  'assets/css.png',
  'assets/flutter.png',
  'assets/git.png',
  'assets/googlecloud.png',
  'assets/html.png',
  'assets/java.png',
  'assets/javascript.png',
  'assets/python.png',
  'assets/react.png',
  'assets/tailwind.png',
];

final List<String> itens = [
  "Bootstrap",
  "CSS",
  "Flutter",
  "GIT",
  "Google Cloud",
  "HTML",
  "Java",
  "JavaScript",
  "Python",
  "React",
  "Tailwind",
];

final List<String> descricao = [
  "Usei Bootstrap durante o 2 semestre na matéria de desenvolvimento Front-End.",
  "Aprende CSS durante 2 semestre na matéria de desenvolvimento Front-End, apliquei meu conhecimento no meu Projeto Integrador, onde eu e meu grupo fizemos uma parte do site para a APAE.",
  "Flutter",
  "GIT",
  "Google Cloud",
  "HTML",
  "Java",
  "JavaScript",
  "Python",
  "React",
  "Tailwind",
];

class CarrosselWidget extends StatefulWidget {
  const CarrosselWidget({super.key});

  @override
  State<CarrosselWidget> createState() => _CarrosselWidgetState();
}

class _CarrosselWidgetState extends State<CarrosselWidget> {
  int indiceItemCarrossel = 0;

  void _mudarItemCarrossel(int index) {
    setState(() {
      indiceItemCarrossel = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrait) {
        return Container(
          width: constrait.maxWidth,
          child: Column(
            children: [
              CarouselSlider(
                items: imagensLinguagens.map((imgPath) {
                  return ImgCarrossel(imgPath: imgPath);
                }).toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayCurve: Curves.linear,
                  enableInfiniteScroll: true,
                  height: 125,
                  viewportFraction: 0.20,
                  onPageChanged: (index, reason) {
                    _mudarItemCarrossel(index);
                  }
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(
                      itens[indiceItemCarrossel],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    Text(
                      descricao[indiceItemCarrossel],
                      textAlign: TextAlign.left,
                    ),
                  ],
                )
              ),
            ],
          ),
        );
      }
    );
  }

}

//CLASSE DE TROCA DE IMAGEM DO CARROSEL
class ImgCarrossel extends StatelessWidget {
  final String imgPath;
  const ImgCarrossel({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgPath),
        ),
      ),
    );
  }
}