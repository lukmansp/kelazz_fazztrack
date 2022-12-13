import 'package:dio/dio.dart';
import 'package:fazztrack_batch1/UI/view/UserView.dart';
import 'package:fazztrack_batch1/core/model/userModel.dart';
import 'package:fazztrack_batch1/core/service/userService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserViewModel extends GetxController {
  UserService service = UserService();
  List<UserModel> user;
  String selectedUser = "";
  List setData = [];
  var _dio = Dio();
  bool isBUsy = false;
  String setEmail = "";
  String setPassword = "";
  Future getDataUser() async {
    isBUsy = true;
    update();
    var response = await service.getUser();
    user = response;
    isBUsy = false;
    update();
  }

  setUser(String value) {
    selectedUser = value;
  }

  emailUser(String email) {
    setEmail = email;
  }

  passwordUser(String pass) {
    setPassword = pass;
  }

  userLogin(BuildContext context) async {
    var result =
        await service.userLogin(email: setEmail, password: setPassword);
    if (result.statusCode == 200) {
      getDataUser();
      Get.off(UserView(
        viewModel: this,
      ));
    } else {
      Get.defaultDialog(title: "Failed on login");
    }
    print("disini result $result");
  }
}
