import 'package:afk/helper/apiservice.dart';

class LoginModel {
  Future<LoginModel> Login({
    required String Token,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'token': Token,
    });
  }

  // final String? token;

  // LoginModel({required this.token});

  // factory LoginModel.fromJson(Map<String, dynamic>? json) =>
  //     LoginModel(token: json!['token'] as String);
}
