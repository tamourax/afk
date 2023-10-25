import 'package:afk/helper/apiservice.dart';

import 'package:flutter/material.dart';

class LogainPage extends StatelessWidget {
  LogainPage({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(children: [
          textfieldlogin('Username', username),
          const SizedBox(
            height: 32,
          ),
          textfieldlogin('Password', password),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 183, 78, 70))),
              onPressed: () {
                Api().post(
                    url: 'https://back.afakyerp.com/API/User/Login',
                    body: {"UserName": "master", "Password": "20232023"});
              },
              child: const Text('Login'))
        ]),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 183, 78, 70),
        title: const Text('Login Form'),
      ),
    );
  }

  TextField textfieldlogin(String hint, TextEditingController controller) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ));
  }
}
