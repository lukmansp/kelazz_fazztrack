import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fazztrack_batch1/core/model/userModel.dart';

class UserService {
  var _dio = Dio();
  Future<List<UserModel>> getUser() async {
    print("msuk ke service");
    try {
      var response =
          await _dio.get("https://jsonplaceholder.typicode.com/users");
      print("suksess $response");
      List<UserModel> _model =
          List<UserModel>.from(response.data.map((e) => UserModel.fromJson(e)));
      return _model;
    } catch (e) {
      print("error on $e");
      throw Error();
    }
  }

  Future userLogin({email: String, password: String}) async {
    try {
      var response = await _dio.post("http://23.20.237.176:8000/auth/login",
          data: {"email": email, "password": password});
      return response;
    } catch (e) {
      print("error on $e");
      return DioError(requestOptions: e);
    }
  }
}
