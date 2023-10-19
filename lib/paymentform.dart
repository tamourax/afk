import 'package:afk/dropdown.dart';
import 'package:afk/helper/apiservice.dart';

import 'package:flutter/material.dart';

class PaymentForm extends StatelessWidget {
  PaymentForm({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(children: [
          DropdownButton(
            onTap: () {
              
            },
            hint: const Text('customer list'),
            items: items,
            onChanged: (value) {},
          ),
          DropdownButton(
            hint: const Text('customer list'),
            items: items1,
            onChanged: (value) {},
          ),
          DropdownButton(
            hint: const Text('customer list'),
            items: items2,
            onChanged: (value) {},
          )
        ]),
      ),
    ));
  }
}
