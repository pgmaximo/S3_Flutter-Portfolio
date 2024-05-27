import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/info_carrossel.dart';

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
        return SizedBox(
          width: constrait.maxWidth,
          child: Column(
            children: [
              CarouselSlider(
                items: imagensLinguagens.map((imgPath) {
                  return ImgCarrossel(imgPath: imgPath);
                }).toList(),
                options: CarouselOptions(
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayCurve: Curves.linear,
                  height: 125,
                  viewportFraction: 0.16,
                  onPageChanged: (index, reason) {
                    _mudarItemCarrossel(index);
                  }
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                width: 600,
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
                      textAlign: TextAlign.center,
                      
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