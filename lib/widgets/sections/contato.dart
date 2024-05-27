import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Contato extends StatefulWidget {
  const Contato({super.key});

  @override
  State<Contato> createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _mensagemController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _mensagemController.dispose();
    super.dispose();
  }

  void _enviarEmail() {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      final mensagem = _mensagemController.text;
      final url = 'mailto:pedrogmaximo@gmail.com?subject=Email enviado pelo portfolio web&body=$mensagem&from=$email';

      launchUrl(Uri.parse(url));

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email enviado com sucesso!')),
      );
      _emailController.clear();
      _mensagemController.clear();
    }
  }

  void _copiarEmailParaAreaTransferencia() {
    const email = 'pedrogmaximo@gmail.com'; // Defina o endereço de e-mail que deseja copiar
    Clipboard.setData(const ClipboardData(text: email)); // Copia o endereço de e-mail para a área de transferência
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Email copiado para a área de transferência')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final breakpointMobile = constraints.maxWidth < 600;
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'CONTATO',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 26, 118),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (breakpointMobile)
                contatoColumn()
              else
                contatoRow(),
            ],
          ),
        );
      },
    );
  }

  Widget contatoColumn() {
    return Column(
      children: [
        emailForm(),
        const SizedBox(height: 20),
        socialMedia(),
      ],
    );
  }

  Widget contatoRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: emailForm()),
        const SizedBox(width: 20),
        Expanded(child: socialMedia()),
      ],
    );
  }

  Widget emailForm() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _emailController,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelText: 'Seu Email',
              labelStyle: const TextStyle(
                color: Colors.black
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira seu email';
              }
              if (!value.contains('@')) {
                return 'Por favor, insira um email válido';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _mensagemController,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelText: 'Sua Mensagem',
                labelStyle: const TextStyle(
                color: Colors.black
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              
            ),
            maxLines: 5,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira uma mensagem';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: _enviarEmail,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 26, 118),
                ),
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  const Size(150, 50),
                )
              ),
              child: const Text('Enviar', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialMedia() {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              const Text(
                'Outros métodos de contato',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 26, 118),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  socialMediaButton(
                    icon: FontAwesomeIcons.linkedin,
                    label: 'LinkedIn',
                    onPressed: () {
                      launchUrl(Uri.parse('https://www.linkedin.com/in/pedro-gabriel-maximo'));
                    },
                  ),
                  socialMediaButton(
                    icon: FontAwesomeIcons.github,
                    label: 'GitHub',
                    onPressed: () {
                      launchUrl(Uri.parse('https://github.com/pgmaximo'));
                    },
                  ),
                  socialMediaButton(
                    icon: FontAwesomeIcons.envelope,
                    label: 'Email',
                    onPressed: _copiarEmailParaAreaTransferencia,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget socialMediaButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: const Color.fromARGB(255, 0, 26, 118), size: 24,),
      label: Text(
        label,
        style: const TextStyle(color: Color.fromARGB(255, 0, 26, 118)),
        textAlign: TextAlign.left,
      ),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(const Size(200, 20)),
        alignment: Alignment.centerLeft,
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10)),
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16)),
      ),
    );
  }
}
