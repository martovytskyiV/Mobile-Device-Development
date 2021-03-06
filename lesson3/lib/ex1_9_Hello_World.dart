import 'package:flutter/material.dart';

void main() {
  const String rootLevelTitle = 'It\'s so easy!';
  runApp(
    TitleProvider(
      title: rootLevelTitle,
      child: RootLevelWidget(),
    ),
  );
}

class HelloWorldDecorationWidget extends StatelessWidget {
  const HelloWorldDecorationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
    decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.lime),
    alignment: Alignment.center,
    child: HelloWorldTitleOnlyWidget(),
  );
}

class HelloWorldTitleOnlyWidget extends StatelessWidget {
  const HelloWorldTitleOnlyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String? title = TitleProvider.of(context)?.title;
    //final size = MediaQuery.of(context).toString();

    //print(size);

    return Text(
      title!,
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.black, fontSize: 40),
    );
  }
}

class RootLevelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SecondLevelWidget();
}

class SecondLevelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => HelloWorldDecorationWidget();
}

class TitleProvider extends InheritedWidget {
  final String title;
  final Widget child;

  TitleProvider({required this.title, required this.child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static TitleProvider? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<TitleProvider>();
}
