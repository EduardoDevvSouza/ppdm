import 'package:flutter/material.dart'; // Importando o pacote material, que contém os widgets do Flutter
import 'Main.dart'; // Importando o arquivo Tela2.dart
import 'login_screen.dart';

class cadastro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Formcadastro(),
      ),
    );
  }
}
class Formcadastro extends StatelessWidget{
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _loginController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();


  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20.0),
      color:Colors.indigoAccent,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _nomeController,

                decoration: InputDecoration(
                  labelText: 'Nome',
                  prefixIcon: Icon(Icons.people),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height:20.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _loginController,

                decoration: InputDecoration(
                  labelText: 'Login',
                  prefixIcon: Icon(Icons.login),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height:20.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _emailController,

                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),

            SizedBox(height:20.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),

            SizedBox(height:20.0),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Confirmar senha',
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height:20.0),

          ],
        ),
      ),
    );
  }
}