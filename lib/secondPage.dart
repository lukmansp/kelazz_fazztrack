import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String inputName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                if (inputName.isNotEmpty) {
                  Navigator.pop(context, inputName);
                }
              },
              icon: Icon(Icons.arrow_back_ios)),
          title: Text("second page")),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              child: ElevatedButton(
                  onPressed: () {
                    // _buildAlert(context, inputName);
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text("save")),
            )
          ],
        )),
      ),
    );
  }

  Future _buildAlert(BuildContext context, String input) {
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text("ini adalah $input"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Ok"))
              ],
            ));
  }
}
