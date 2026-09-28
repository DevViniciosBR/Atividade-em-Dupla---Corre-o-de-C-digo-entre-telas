import 'package:flutter/material.dart';
import 'configuracoes_screen.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
      ),
      body: Center(
        child: Container(
          width: 330,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Icon(
                Icons.person,
                size: 90,
              ),
              Text(
                'Nome: João da Silva',
                style: TextStyle(fontSize: 20),
              ),
              Text('Turma: 2º C'),
              Text('Curso: Técnico em Desenvolvimento'),
              Text('Matrícula: 2026001'),

              Container(
                padding: EdgeInsets.all(10),
                margin: 15,
                color: Colors.green,
                child: Text('Situação: ATIVO'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfiguracoesScreen(),
                    ),
                  );
                },
                child: Text('CONFIGURAÇÕES'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
