import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page Ketiga")),
      body: Container(
        margin: EdgeInsets.only(top: 16, left: 16),
        child: Column(
          children: [
            Container(
              child: Text("Ini page ketiga"),
            )
          ],
        ),
      ),
    );
  }
}
