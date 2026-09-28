import 'package:flutter/material.dart';
import 'perfil_screen.dart';
import 'cursos_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: 15,
        ),
        child: Column(
          children: [
            Text(
              'Bem-vindo ao Portal',
              style: TextStyle(
                fontSize: '28',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Escolha uma opção abaixo:'),

            Row(
              children: [
                Container(
                  width: 220,
                  height: 120,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Meu Perfil'),
                  ),
                ),
                Container(
                  width: 220,
                  height: 120,
                  color: Colors.green,
                  child: Center(
                    child: Text('Meus Cursos'),
                  ),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PerfilScreen,
                  ),
                );
              },
              child: Text('ABRIR PERFIL'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CursosScreen(),
                  ),
                );
              },
              child: Text('ABRIR CURSOS'),
            ),
          ],
        ),
      ),
    );
  }
}
