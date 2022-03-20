import 'package:flutter/material.dart';
import "Base_Widget/ex01_Text.dart";
import 'Base_Widget/ex03_Container.dart';
import 'Base_Widget/ex04_Clip.dart';
import 'Base_Widget/ex_02_Image.dart';
import 'Base_layouts/ex07_Stack.dart';
import 'Base_layouts/ex05_Flex.dart';
import 'Base_layouts/ex06_Wrap.dart';
import 'Flex/Flex.dart';
import 'Flex/Flow.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  FlowApp(),
    );
  }
}


