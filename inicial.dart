import 'package:avaliacaosomativappdm/medico.dart';
import 'package:flutter/material.dart';

class pagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página inicial'),
      ),
      body: Column(
        children: [
          // Hamburger Menu
          HamburgerMenu(),
        ],
      ),
    );
  }
}

class HamburgerMenu extends StatefulWidget {
  @override
  _HamburgerMenuState createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  bool isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(isMenuOpen ? Icons.close : Icons.menu),
          onPressed: () {
            setState(() {
              isMenuOpen = !isMenuOpen;
            });
          },
        ),
        if (isMenuOpen)
          Column(
            children: [
              ListTile(
                title: Text('Consultas'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Médicos'),
                onTap: () {
                  Navigator.push( // Navega para a Tela2
                    context,
                    MaterialPageRoute(builder: (context) => medico()),
                  );

                },
              ),
              ListTile(
                title: Text('Planos'),
                onTap: () {},
              ),
            ],
          ),
      ],
    );
  }
}