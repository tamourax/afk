import 'package:afk/helper/apiservice.dart';

import 'package:afk/models/loginmodel/item2.dart';
import 'package:afk/models/loginmodel/newmodel.dart';

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
                title: const Text('Payment Form'),
                backgroundColor: const Color.fromARGB(255, 183, 78, 70)),
            body: Column(
              children: [
                const dropdownlist(),
                const SizedBox(height: 30),
                const dropdownlist(),
                const SizedBox(height: 30),
                const dropdownlist(),
                const SizedBox(height: 30),
                const textfiled(),
                const SizedBox(height: 30),
                const textfiled(),
                const SizedBox(height: 30),
                const textfiled(),
                const SizedBox(height: 50),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 183, 78, 70))),
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
    return const TextField(
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
      dropdownDecoratorProps: const DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
              labelText: 'select costumer',
              
              floatingLabelAlignment: FloatingLabelAlignment.center,
              contentPadding: EdgeInsets.only(left: 10, top: 5))),
      asyncItems: (String filter) async {
        var response = await Api().get(
            url: 'https://back.afakyerp.com/API/PosForm/GetAll',
            token:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxIiwiTGFuZ0lkIjoiMSIsIkNvbXB1dGVyTmFtZSI6IiIsImV4cCI6MTY5ODM0OTAxMywiaXNzIjoidGVzdCIsImF1ZCI6InRlc3QifQ.nedeQiQJufApYba85hnriSvkFX5AaWxhckYjZq78c38');
        //Iterate in the Json Response 
        List<ItemsList2> models = [];
        for (var item in response['data'][0]['itemsList']) {
          debugPrint("Item : ${item["groupId"]}");
            models.add(ItemsList2.fromJson(item));
        }
        
        return models;
      },
    
      onChanged: (ItemsList2? data) {
        print(data);
      },
    );
  }
}
