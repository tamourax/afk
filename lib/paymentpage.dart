import 'package:afk/helper/apiservice.dart';

import 'package:afk/models/loginmodel/item2.dart';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class paymentpage extends StatefulWidget {
  const paymentpage({super.key});

  @override
  State<paymentpage> createState() => paymentpageState();
}

class paymentpageState extends State<paymentpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: Text('Payment Form'),
                backgroundColor: const Color.fromARGB(255, 183, 78, 70)),
            body: Column(
              children: [
                dropdownlist(),
                SizedBox(height: 30),
                dropdownlist(),
                SizedBox(height: 30),
                dropdownlist(),
                SizedBox(height: 30),
                textfiled(),
                SizedBox(height: 30),
                textfiled(),
                SizedBox(height: 30),
                textfiled(),
                SizedBox(height: 50),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            const Color.fromARGB(255, 183, 78, 70))),
                    onPressed: () {},
                    child: const Text('Add'))
              ],
            )));
  }
}

class textfiled extends StatelessWidget {
  const textfiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5, left: 10),
          hintText: 'price',
          label: Text('price')),
    );
  }
}

class dropdownlist extends StatelessWidget {
  const dropdownlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<ItemsList2>(
      dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
              labelText: 'select costumer',
              floatingLabelAlignment: FloatingLabelAlignment.center,
              contentPadding: EdgeInsets.only(left: 10, top: 5))),
      asyncItems: (String filter) async {
        var response = await Api().get(
            url: 'https://back.afakyerp.com/API/PosForm/GetAll',
            token:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxIiwiTGFuZ0lkIjoiMSIsIkNvbXB1dGVyTmFtZSI6IiIsImV4cCI6MTY5ODIzMzU0MywiaXNzIjoidGVzdCIsImF1ZCI6InRlc3QifQ.GJHGMvh3I8aHp2zVcpxEvOnrrE1ehprwWwvcWNkAmAM');

        var models = ItemsList2.fromJson(response);
        return [models];
      },
      onChanged: (ItemsList2? data) {
        print(data);
      },
    );
  }
}
