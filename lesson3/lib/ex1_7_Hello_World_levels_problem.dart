import 'package:flutter/material.dart';



void main() {
  const String rootLevelTitle = 'So many levels!';
  runApp(
    RootLevelWidget(title: rootLevelTitle),
  );
}



class HelloWorldDecorationWidget extends StatelessWidget {
  final String title;

  const HelloWorldDecorationWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.lime),
    alignment: Alignment.center,
    child: HelloWorldTitleOnlyWidget(
      title: title,
    ),
  );
}

class HelloWorldTitleOnlyWidget extends StatelessWidget {
  final String title;

  const HelloWorldTitleOnlyWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
    title,
    textDirection: TextDirection.ltr,
    style: const TextStyle(color: Colors.black, fontSize: 40),
  );
}
class SecondLevelWidget extends StatelessWidget {
  final String title;

  const SecondLevelWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => HelloWorldDecorationWidget(
    title: title,
  );
}

class RootLevelWidget extends StatelessWidget {
  final String title;

  const RootLevelWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) => SecondLevelWidget(
    title: title,
  );
}


