import 'dart:convert';


import 'package:afk/models/loginmodel/paymentmodel/itemlist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, required String? token}) async {
    Map<String, String> headers = {
      'Content-Type': "application/json",
    };

    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response response = await http.get(Uri.parse(url), headers: headers);
    Map<String, dynamic> customelist = jsonDecode(response.body);
    print(response.body);
    // List<String> customerlist = customelist['customerList']['id'];
    // print(customerlist);

    if (response.statusCode == 200) {
      print(response.statusCode);
      print(ItemsList().itemCode);
      return jsonDecode(response.body);
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url, required Map<String, dynamic> body}) async {
    Map<String, String> headers = {
      'Content-Type': "application/json",
    };
    String jsondata = jsonEncode(body);

    http.Response response =
        await http.post(Uri.parse(url), body: jsondata, headers: headers);
    Map<String, dynamic> Data = jsonDecode(response.body);

    // for (int i = 0; i < 1; i++) {
    //   logintoken.add(
    //     loginModel.fromJson(Data['token']),
    //   );

    // }
    print(Data['token']);
    print(response.statusCode);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    print('url = $url body = $body token = $token ');
    http.Response response =
        await http.put(Uri.parse(url), body: body, headers: headers);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception(
          'there is a problem with status code ${response.statusCode} with body ${jsonDecode(response.body)}');
    }
  }
}
