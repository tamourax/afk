import 'package:afk/helper/apiservice.dart';

import 'package:afk/models/loginmodel/paymentmodel/itemlist.dart';
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
        home: Scaffold(
      body: DropdownSearch<ItemsList>(
        asyncItems: (String filter) async {
          var response = await Api().get(
              url: 'https://back.afakyerp.com/API/PosForm/GetAll',
              token:
                  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxIiwiTGFuZ0lkIjoiMSIsIkNvbXB1dGVyTmFtZSI6IiIsImV4cCI6MTY5Nzk3MzI5OSwiaXNzIjoidGVzdCIsImF1ZCI6InRlc3QifQ.Ip3tZYRzuCwhiYryZOWqJSoo5VD-giZHqhl6Z_udFeA");

          dynamic models = ItemsList.fromJson(response);
          return models;
        },
        onChanged: (ItemsList? data) {
          print(data);
        },
      ),
    ));
  }
}
