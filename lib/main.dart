import 'package:fazztrack_batch1/MyHomePage.dart';
import 'package:fazztrack_batch1/loginPage.dart';
import 'package:fazztrack_batch1/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/secondPage': (context) => SecondPage(),
        '/login': (context) => LoginPage()
      },
    );
  }
}
