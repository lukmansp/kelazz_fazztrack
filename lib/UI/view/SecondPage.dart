import 'package:fazztrack_batch1/UI/viewModel/userViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  final UserViewModel viewModel;
  SecondPage({
    Key key,
    @required this.viewModel,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String inputName = "";

  @override
  Widget build(BuildContext context) {
    print("");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // if (inputName.isNotEmpty) {
            // Navigator.pop(context, inputName);
            // }
            Get.back(result: inputName);
          },
        ),
        title: Text("Ini page Kedua "),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(24),
                    child: Text(widget.viewModel.selectedUser),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(24),
                    child: Text("Box 2"),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.all(24),
                    child: Text("Box 3"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text("Input $inputName"),
            ),
            Container(
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    inputName = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ElevatedButton(
                  onPressed: () {
                    // _buildAlert(context);
                    Get.defaultDialog(
                        title: "Alert dari Get",
                        confirm: ElevatedButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text("Okk")));
                  },
                  child: Text("Alert")),
            )
          ],
        ),
      ),
    );
  }

  Future _buildAlert(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Update Profile $inputName",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              actions: [
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushAndRemoveUntil(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => MyHomePage(),
                        //     ),
                        //     (route) => false);
                        Navigator.pushNamed(context, "/thirdPage");
                      },
                      child: Text("Ok")),
                )
              ],
            ));
  }
}
