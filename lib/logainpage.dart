import 'package:afk/assetsdata.dart';
import 'package:afk/helper/apiservice.dart';
import 'package:afk/helper/app_route.dart';
import 'package:afk/paymentpage.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogainPage extends StatelessWidget {
  LogainPage({super.key});
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(children: [
          Container(child: Image.asset(AssetsData.logo)),
          textfieldlogin('master', username),
          const SizedBox(
            height: 32,
          ),
          textfieldlogin('20232023', password),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 183, 78, 70))),
              onPressed: () {
                Api().post(
                    url: 'https://back.afakyerp.com/API/User/Login',
                    body: {"UserName": "master", "Password": "20232023"});
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => paymentpage()));
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
        readOnly: true,
        cursorColor: Colors.black,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ));
  }
}
