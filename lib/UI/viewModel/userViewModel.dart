import 'package:dio/dio.dart';
import 'package:fazztrack_batch1/core/service/userService.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserViewModel extends GetxController {
  UserService service;
  List setData = [];
  var _dio = Dio();
  bool isBUsy = false;

  Future getDataFromApi() async {
    isBUsy = true;
    var result = await _dio.get("https://jsonplaceholder.typicode.com/users");
    print("disini result ${result.data}");
    setData = result.data;
    isBUsy = false;
    update();
  }
}
