 import 'package:afk/helper/apiservice.dart';
import 'package:flutter/material.dart';

List<DropdownMenuItem<dynamic>>? items = [
    DropdownMenuItem(
      child: Text('data'),
      value: '',
      onTap: () {
        Api().get(
            url: 'https://back.afakyerp.com/API/PosForm/GetAll',
            token:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxIiwiTGFuZ0lkIjoiMSIsIkNvbXB1dGVyTmFtZSI6IiIsImV4cCI6MTY5Nzc2MTQ3MywiaXNzIjoidGVzdCIsImF1ZCI6InRlc3QifQ.XhYF67yJ8biKw63TFeHDteBGjtqqvbfH1pqSStA_YCc');
      },
    ),
    const DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
    const DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
  ];
  List<DropdownMenuItem<dynamic>>? items1 = [
    const DropdownMenuItem(
      child: Text('g'),
      value: 'd',
    ),
    const DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
    const DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
  ];
  List<DropdownMenuItem<dynamic>>? items2 = [
    const DropdownMenuItem(
      child: Text('g'),
      value: 'd',
    ),
    const DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
    const DropdownMenuItem(
      child: Text('a'),
      value: 'd',
    ),
  ];