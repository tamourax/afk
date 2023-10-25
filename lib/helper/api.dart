import 'dart:convert';

import 'package:afk/models/loginmodel/item2.dart';
import 'package:http/http.dart' as http;

class api2 {
  String baseUrl = 'https://back.afakyerp.com/API/PosForm/GetAll';

  String apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxIiwiTGFuZ0lkIjoiMSIsIkNvbXB1dGVyTmFtZSI6IiIsImV4cCI6MTY5ODEzMDk0NywiaXNzIjoidGVzdCIsImF1ZCI6InRlc3QifQ.oOnaahgwJZdwuk1j1AlMPYpnzPlP0iJH2_XN3X2xO8A';
  Future<ItemsList2> getitemlist({required String? token}) async {
    Map<String, String> headers = {
      'Content-Type': "application/json",
    };
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    Uri url = Uri.parse('$baseUrl');
    http.Response response = await http.get(url, headers: headers);

    if (response.statusCode == 400) {
      var data = jsonDecode(response.body);
      throw Exception(data['error']['message']);
    }
    Map<String, dynamic> data = jsonDecode(response.body);

    ItemsList2 weather = ItemsList2.fromJson(data);

    return weather;
  }
}
