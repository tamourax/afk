import 'package:flutter/material.dart';

class PaymentForm extends StatelessWidget {
  PaymentForm({super.key});
  List<DropdownMenuItem<dynamic>>? items = [
    DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
    DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
    DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: [
        DropdownButton(
          items: items,
          onChanged: (value) {},
        )
      ]),
    ));
  }
}
