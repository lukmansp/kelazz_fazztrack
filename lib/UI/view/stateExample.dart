import 'package:get/get.dart';

class StateExample extends GetxController {
  String inputUserFromReactive = "";
  String nama;
  String umur;
  String dataNama;

  handleInputUser(String value) {
    if (!value.contains("@")) {
      inputUserFromReactive = value;
    }
    update();
  }
}
