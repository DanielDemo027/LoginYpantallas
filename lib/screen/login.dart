import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: TextFormField(
              decoration: const InputDecoration(labelText: 'User', border: UnderlineInputBorder()),
              autofocus: true,
            )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextFormField(
              decoration: const InputDecoration(labelText: 'Password', border: UnderlineInputBorder()),
              obscureText: true,
            )
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/principal');
              }, 
              child: const Text('Entrar'),
            )
          ],
        ),
      ),
    );
  }
}