import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amberAccent),
      alignment: Alignment.center,
      child: const Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.black, fontSize: 40),
      ),
    ),
  );
}




