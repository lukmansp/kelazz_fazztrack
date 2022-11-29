// ignore: file_names
import 'package:fazztrack_batch1/detailPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble))
          ],
          title: const Text(
            "Selamat datang",
            style: const TextStyle(fontSize: 12),
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Text("disini okke"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(),
                          ));
                    },
                    child: Text("Ke detail Page"))
              ],
            ),
          ),
        ));
  }
}
