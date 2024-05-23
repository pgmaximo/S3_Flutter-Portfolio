import 'package:flutter/material.dart';
import 'package:portfolio/widgets/carrossel.dart';

class SobreMim extends StatefulWidget {
  const SobreMim({super.key});

  @override
  State<SobreMim> createState() => _SobreMimState();
}

class _SobreMimState extends State<SobreMim> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (contextm, constrait) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Wrap(
            alignment: WrapAlignment.spaceAround,
            runSpacing: 20,
            children: [
              // Coluna do Texto
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'SOBRE MIM',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 26, 118)
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Estudante de Ciência da Computação no 3º semestre no Instituto Mauá de Tecnologia, na busca contínua pelo aprimoramento técnico e pela compreensão das mais recentes inovações em tecnologia. Além das disciplinas acadêmicas, estou sempre empenhado em expandir meu conhecimento por meio de cursos e projetos práticos, especialmente nas áreas de IA Generativa, desenvolvimento web e DevOps.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Atualmente, tenho a oportunidade de estagiar na Matza Education, onde mergulho no universo das IAs Generativas, CRM e metodologias ágeis. Paralelamente, contribuo ativamente para o desenvolvimento do site da BRAFIP em Wordpress, aprimorando minhas habilidades práticas em desenvolvimento web e contribuindo para projetos com impacto positivo.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  CarrosselWidget(),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}