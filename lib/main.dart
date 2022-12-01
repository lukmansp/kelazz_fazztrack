import 'package:fazztrack_batch1/MyHomePage.dart';
import 'package:fazztrack_batch1/SecondPage.dart';
import 'package:fazztrack_batch1/ThirdPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => MyHomePage(),
        "/secondPage": (context) => SecondPage(),
        "/thirdPage": (context) => ThirdPage()
      },
    );
  }
}
