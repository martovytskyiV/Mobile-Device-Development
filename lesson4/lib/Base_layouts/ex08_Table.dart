import 'package:flutter/material.dart';

class TableSample extends StatefulWidget {
  @override
  _TableSampleState createState() => _TableSampleState();
}

class _TableSampleState extends State<TableSample> {
  @override
  Widget build(BuildContext context) {
    return Table(
        border: TableBorder.all(color: Colors.black),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
          TableRow(children: [
            Rect(Colors.red),
            Rect(Colors.blue),
            Rect(Colors.yellow)
          ]),
        ]);
  }
}


class Rect extends Container {
  Rect(Color color)
      : super(color: color);
}