import 'package:dio/dio.dart';
import 'package:fazztrack_batch1/core/model/userModel.dart';

class UserRepository {
  var _dio = Dio();
  Future<List> getDataFromApi() async {
    print("masuk ke repo");
    var result = await _dio.get("https://jsonplaceholder.typicode.com/users");
    print("result $result");
    UserModel userModel = UserModel.fromJson(result.data);
    print("disini ke api ${userModel.name}");
    return result.data;
  }
}
