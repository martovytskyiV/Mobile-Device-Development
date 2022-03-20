import 'package:flutter/material.dart';


class WrapSample extends StatelessWidget {
  final icons = List<Widget>.generate(
      23,
          (index) => Container(
               color: index >=10 ?Colors.blue: Colors.yellow,
          padding: const EdgeInsets.all(8),
          child: Image.asset("images/logo.png", width: 50,)));

  WrapSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( color: Colors.white60,
      child: Wrap(

          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.center,
          verticalDirection: VerticalDirection.up,
          spacing: 10.0,
          runSpacing: 10.0,
          children: icons),
    );
  }
}