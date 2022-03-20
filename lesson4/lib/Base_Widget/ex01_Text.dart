import 'package:flutter/material.dart';


class TextSample extends StatelessWidget {
  const TextSample ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material( child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [const Text('Simple text'),
          RichText(
              text: const TextSpan(children: [
                TextSpan(text: 'Rich', style: TextStyle(color: Colors.black,)),
                TextSpan(text: 'Text', style: TextStyle(color: Colors.green)),
              ])),
          const Text.rich(
            TextSpan(
              text: 'Hello',  // default text style
                style: TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ]),
    );
  }
}





class TextSample_2 extends StatelessWidget {
  const TextSample_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Simple text',
            style: TextStyle(
                decoration: TextDecoration.overline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.red,
                decorationThickness: 1,
                wordSpacing: 1.0,
                fontWeight: FontWeight.w600,
                foreground: Paint()..color = Colors.black38,)

          ),
          // Text.rich(TextSpan(children: [
          //   TextSpan(text: 'Text '),
          //   TextSpan(text: 'Span', style: TextStyle(color: Colors.green)),
          // ])),
        ],
      ),
    );
  }
}
