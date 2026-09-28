import 'package:flutter/material.dart';

class ConfiguracoesScreen extends StatelessWidget {
  const ConfiguracoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Text(
                'Preferências',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                children: [
                  Icon(Icons.dark_mode),
                  Text('Tema escuro'),
                  Switch(
                    value: 'false',
                    onChanged: null,
                  ),
                ],
              ),

              Row(
                children: [
                  Icon(Icons.notifications),
                  Text('Notificações'),
                  Switch(
                    value: false,
                    onChanged: (valor) {
                      print(valor)
                    },
                  ),
                ],
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(12),
                color: Colors.red,
                child: Text(
                  'SAIR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
