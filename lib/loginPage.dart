import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text("Login")),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("ini Login Page"),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("kembali ke home"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
