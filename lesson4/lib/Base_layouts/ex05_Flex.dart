
import 'package:flutter/material.dart';

class FlexSample extends StatefulWidget {
  @override
  _FlexPageState createState() => _FlexPageState();
}

class _FlexPageState extends State<FlexSample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flex(
          direction: Axis.horizontal,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Flexible(flex:2,child: Rect(Colors.red)),
            Flexible(flex:5,child: Rect(Colors.blue),fit: FlexFit.tight,),
            Flexible(flex:2,child: Rect(Colors.yellow),fit: FlexFit.tight),
            Spacer(flex: 4,),
            Rect(Colors.green)
          ]),
    );
  }
}


class Rect extends StatelessWidget {

  const Rect(this.color,{Key? key}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 24,
      width: 24,
    );
  }
}
