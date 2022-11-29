import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _groupValue = -1;
  bool _isChecked = true;
  String _currText = '';

  List<String> text = ["InduceSmile.com", "Flutter.io", "google.com"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Page")),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.only(left: 40, right: 20, top: 20),
                    padding: EdgeInsets.all(20),
                    child: Text("ini detail page")),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          color: Colors.cyan,
                          padding: EdgeInsets.all(16),
                          child: Text("pertama")),
                      Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.deepOrange,
                          child: Text("Kedua")),
                      Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.indigo,
                          child: Text("Ketiga"))
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 2, color: Colors.grey)
                      ]),
                  margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: RadioListTile(
                          value: 0,
                          groupValue: _groupValue,
                          title: Text("Male"),
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue),
                          activeColor: Colors.red,
                          selected: false,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: RadioListTile(
                          value: 1,
                          groupValue: _groupValue,
                          title: Text("Female"),
                          onChanged: (newValue) =>
                              setState(() => _groupValue = newValue),
                          activeColor: Colors.red,
                          selected: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(_currText,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Container(
                        height: 350.0,
                        child: Column(
                          children: text
                              .map((t) => CheckboxListTile(
                                    title: Text(t),
                                    value: _isChecked,
                                    onChanged: (val) {
                                      setState(() {
                                        _isChecked = val;
                                        if (val == true) {
                                          _currText = t;
                                        }
                                      });
                                    },
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }
}
