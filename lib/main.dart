import 'package:fazztrack_batch1/UI/view/MyHomePage.dart';
import 'package:fazztrack_batch1/UI/view/SecondPage.dart';
import 'package:fazztrack_batch1/UI/view/ThirdPage.dart';
import 'package:fazztrack_batch1/UI/view/UserView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => MyHomePage(),
      //   "/secondPage": (context) => SecondPage(),
      //   "/thirdPage": (context) => ThirdPage()
      // },
    );
  }
}
