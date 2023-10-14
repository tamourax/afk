import 'package:flutter/material.dart';

class LogainPage extends StatelessWidget {
  const LogainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(children: [
          textfieldlogin('Username'),
          const SizedBox(
            height: 32,
          ),
          textfieldlogin('Password'),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Login'))
        ]),
      ),
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
    );
  }

  TextField textfieldlogin(String hint) {
    return TextField(
        decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
    ));
  }
}
