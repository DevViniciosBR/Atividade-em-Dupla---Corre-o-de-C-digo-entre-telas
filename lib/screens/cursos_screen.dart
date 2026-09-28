import 'package:flutter/material.dart';

class CursosScreen extends StatelessWidget {
  const CursosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Cursos'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Disciplinas',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(Icons.phone_android),
                  Text('Flutter e Dart'),
                  Text('Em andamento'),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              color: Colors.orange.shade100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Icon(Icons.web),
                  Text('Desenvolvimento Web'),
                  Text('Em andamento'),
                ],
              ),
            ),

            Row(
              children: [
                Text('Carga horária total:'),
                Text(120),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
