import 'package:afk/dropdown.dart';
import 'package:afk/helper/apiservice.dart';
import 'package:afk/models/loginmodel/paymentmodel/customerlist.dart';
import 'package:afk/models/loginmodel/paymentmodel/itemlist.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PaymentForm extends StatelessWidget {
  PaymentForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Api().get(
        url: 'https://back.afakyerp.com/API/PosForm/GetAll',
        token:
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxIiwiTGFuZ0lkIjoiMSIsIkNvbXB1dGVyTmFtZSI6IiIsImV4cCI6MTY5Nzc3NDAwNiwiaXNzIjoidGVzdCIsImF1ZCI6InRlc3QifQ.R67VoOFx3lRBkn2nRhl-KZOIPEbgeXKgKMza0YzMkIo");

    return Scaffold(
        body: Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(children: [
          DropdownButton(
            onTap: () {
              
            },
            hint: const Text('customers list'),
            items: items,
            onChanged: (value) {},
          ),
          // DropdownButton(
          //   hint: const Text('customer list'),
          //   // items: items1,
          //   onChanged: (value) {},
          // ),
          // DropdownButton(
          //   hint: const Text('customer list'),
          //   items: items2,
          //   onChanged: (value) {},
          // )
        ]),
      ),
    ));
  }
}
