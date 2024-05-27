import 'package:flutter/material.dart';

const double breakpointMobile = 600;

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onScrollToStart;
  final VoidCallback onScrollToAbout;
  final VoidCallback onScrollToProjects;
  final VoidCallback onScrollToContact;

  const MyAppBar({
    super.key,
    required this.onScrollToStart,
    required this.onScrollToAbout,
    required this.onScrollToProjects,
    required this.onScrollToContact,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < breakpointMobile ? _buildMobileAppBar() : _buildDesktopAppBar();
  }

  AppBar _buildMobileAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      forceMaterialTransparency: true,
      elevation: 0,
      centerTitle: true,
      title: GestureDetector(
        onTap: onScrollToStart,
        child: const Text(
          'PedroMaximo.dev',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color.fromARGB(255, 0, 26, 118),
          ),
        ),
      ),
    );
  }

  AppBar _buildDesktopAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      forceMaterialTransparency: true,
      centerTitle: false,
      title: GestureDetector(
        onTap: onScrollToStart,
        child: const Text(
          'PedroMaximo.dev',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Color.fromARGB(255, 0, 26, 118),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: onScrollToAbout,
          style: const ButtonStyle(
            alignment: Alignment.center,
          ),
          child: const Text(
            'Sobre Mim',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 26, 118),
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        TextButton(
          onPressed: onScrollToProjects,
          style: const ButtonStyle(
            alignment: Alignment.center,
          ),
          child: const Text(
            'Projetos',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 26, 118),
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        TextButton(
          onPressed: onScrollToContact,
          style: const ButtonStyle(
            alignment: Alignment.center,
          ),
          child: const Text(
            'Contato',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 26, 118),
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
