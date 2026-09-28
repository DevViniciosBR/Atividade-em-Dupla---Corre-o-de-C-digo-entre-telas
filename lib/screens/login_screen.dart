import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Login',
      ),
      body: Center(
        child: Container(
          width: 320,
          color: Colors.blueGrey,
          padding: 20,
          margin: EdgeInsets.all(20),
          child: Row(
            children: [
              Text(
                'Portal do Aluno',
                style: TextStyle(fontSize: 26),
              ),
              Text('Digite seus dados para entrar'),
              TextField(),
              TextField(
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                ),
                child: Text('ENTRAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
