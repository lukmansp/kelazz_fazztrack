import 'package:dio/dio.dart';
import 'package:fazztrack_batch1/UI/view/SecondPage.dart';
import 'package:fazztrack_batch1/UI/view/TampilData.dart';
import 'package:fazztrack_batch1/UI/view/stateExample.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var inputanUser = "";
  var tampunganPage2 = "";
  var _dio = Dio();

  Future<List> getDataFromApi() async {
    List setData = [];
    var result = await _dio.get("https://jsonplaceholder.typicode.com/users");
    setData.add(result.data);
    return setData[0];
  }

  Future postDataToApi({String email, String password}) async {
    var result = await _dio.post("http://23.20.237.176:8000/auth/login",
        data: {"email": email, "password": password});
    return result;
  }

  StateExample controller = Get.put(StateExample());

  // @override
  // void initState() {

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.amber[900],
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.message))],
            title: Container(
              child: Text(
                "Belajar flutter",
                style: TextStyle(fontSize: 24),
              ),
            )),
        body: GetBuilder<StateExample>(builder: (state) {
          return Container(
            child: ListView(
              children: [
                TampilData(stateExample: state),
                Container(
                    margin: EdgeInsets.only(left: 16),
                    child: TextFormField(
                      onChanged: (value) {
                        state.handleInputUser(value);
                      },
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                      onPressed: () async {
                        var res = await Get.to(SecondPage(emailUser: "lukman"));
                        state.handleInputUser(res);
                      },
                      child: Text("ke page dua")),
                )
              ],
            ),
          );
        }));
  }

  Widget _buildTextField(Function onTap) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: 8),
            child: Text(
              "Input User Name",
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            )),
        Container(
            height: 45,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 8, bottom: 5),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: TextFormField(
              maxLines: 1,
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                  hintText: "Masukan Nama Kamu",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  border: InputBorder.none,
                  suffixStyle: TextStyle(fontSize: 12)),
              onChanged: onTap,
            ))
      ],
    );
  }

  Widget _buildInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              print("mau ngapain ou");
            },
            child: Container(
              child: Text("nampilin kata $inputanUser"),
            ),
          ),
          Container(
            child: Text(tampunganPage2),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              decoration: InputDecoration(border: InputBorder.none),
              onChanged: (value) {
                setState(() {
                  inputanUser = value;
                });
                print("value $value");
              },
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 16),
              ),
              onPressed: () async {
                var result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SecondPage(emailUser: inputanUser, umur: 15),
                    ));
                setState(() async {
                  tampunganPage2 = await result;
                });
              },
              child: Text("save"))
        ],
      ),
    );
  }

  Widget _buildGrid() {
    return Container(
      child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.only(left: 16, right: 16),
          children: [
            Container(
              margin: EdgeInsets.only(right: 8),
              color: Colors.amber,
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(left: 8),
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 8,
              ),
              color: Colors.amber,
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(left: 8),
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              color: Colors.amber,
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(left: 8),
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            ),
            Container(
              margin: EdgeInsets.only(right: 8),
              color: Colors.amber,
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            ),
            Container(
              color: Colors.amber,
              margin: EdgeInsets.only(left: 8),
              padding: EdgeInsets.all(50),
              child: Text("ini grid view"),
            )
          ]),
    );
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: 90,
      itemBuilder: (context, index) {
        print("index ke ");
        return Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 0.5, spreadRadius: 0.2)],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Isi dari page"),
                Text("Isi dari page"),
                Text("Isi dari page"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("isi kesamping"),
                    Text("isi kesamping"),
                    Text("isi kesamping")
                  ],
                ),
              ],
            ));
      },
    );
  }
}
