import 'package:flutter/material.dart';

void main() {
  const String rootLevelTitle = 'It\'s so easy!';
  runApp(
    const TitleProvider(
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
    child: const HelloWorldTitleOnlyWidget(),
  );
}

class HelloWorldTitleOnlyWidget extends StatelessWidget {
  const HelloWorldTitleOnlyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final levelUpInheritedWidget = context.dependOnInheritedWidgetOfExactType<TitleProvider>();
    final title = levelUpInheritedWidget?.title;

    return Text(
      title!,
      textDirection: TextDirection.ltr,
      style: const TextStyle(color: Colors.black, fontSize: 40),
    );
  }
}

class RootLevelWidget extends StatelessWidget {
  const RootLevelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SecondLevelWidget();
}

class SecondLevelWidget extends StatelessWidget {
  const SecondLevelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const HelloWorldDecorationWidget();
}

class TitleProvider extends InheritedWidget {
  final String title;

  final Widget child;

  const TitleProvider({Key? key, required this.title, required this.child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

}
