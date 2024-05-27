import 'package:flutter/material.dart';
import 'package:portfolio/widgets/appbar.dart';
import 'package:portfolio/widgets/sections/contato.dart';
import 'package:portfolio/widgets/sections/home_section/home_desktop.dart';
import 'package:portfolio/widgets/sections/home_section/home_mobile.dart';
import 'package:portfolio/widgets/sections/projetos.dart';
import 'package:portfolio/widgets/sections/sobre_mim.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ScrollController _scrollController = ScrollController();

  void scrollTo(double offset) {
    _scrollController.animateTo(
      offset,
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    const breakpointMobile = 600;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: MyAppBar(
            onScrollToStart: () => scrollTo(0),
            onScrollToAbout: () => scrollTo(320),
            onScrollToProjects: () => scrollTo(720),
            onScrollToContact: () => scrollTo(1200),
          ),
          body: ListView(
            controller: _scrollController,
            children: [
              constraints.maxWidth < breakpointMobile
                  ? const HomeMenuMobile()
                  : const HomeMenuDesktop(),
              const SizedBox(height: 20),
              const SobreMim(),
              const SizedBox(height: 20),
              const Projetos(),
              const SizedBox(height: 20),
              const Contato(),
            ],
          ),
        );
      },
    );
  }
}