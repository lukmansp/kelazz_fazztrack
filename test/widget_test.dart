void main() {
  String validateUserAge(
      {age = int, name = String, address = String, school = String}) {
    bool isAge;
    if (age >= 18) {
      isAge = true;
    } else {
      isAge = false;
    }
    String validAge = isAge ? "dewasa" : "remaja";
    var userInfo = "$name : $validAge";
    return userInfo;
  }

  String validasiSwitchCase(int type) {
    switch (type) {
      case 1:
        return "Sayur";
      case 2:
        return "Buah buahan";
      case 3:
        return "olahan";
      default:
        return "tidak terdaftar";
    }
  }

  perulangan(List<int> items) {
    for (var perItem in items) {
      int saved = 1;
      for (var sumItem in items) {
        saved = saved * sumItem;
        print("disini loop $saved, index ke $perItem");
      }
    }
  }

  PerulanganMap() {
    Map listItem = {
      "name": "Fazztrack",
      "age": "5",
      "scope": "Fullstack Programe"
    };
    print("sebelum dirubah $listItem");
    listItem["name"] = "Pijar";
    print("sesuadh  dirubah $listItem");
  }

  PerulanganMap();
  // perulangan([2, 3, 4, 5]);
  // var res = validasiSwitchCase(2);
  // var result = validateUserAge(
  //     name: "Fajar", age: 18, address: "Jakarta", school: "Fakultas");
  // print("disini $result , val SwitchCase $res");
}
