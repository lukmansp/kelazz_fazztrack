import 'package:fazztrack_batch1/UI/view/stateExample.dart';
import 'package:flutter/material.dart';

class TampilData extends StatefulWidget {
  final StateExample stateExample;
  TampilData({
    Key key,
    this.stateExample,
  }) : super(key: key);

  @override
  State<TampilData> createState() => _TampilDataState();
}

class _TampilDataState extends State<TampilData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          "data dari state exmaple ${widget.stateExample.inputUserFromReactive}"),
    );
  }
}
