class loginModel {
  

  loginModel({required body});

  factory loginModel.fromJson(jsonData) {
    return loginModel(body: jsonData['token']);
  }
}
