import 'package:flutter/material.dart';
void main() {
  runApp(
    const MyWidget(),
  );
}
class MyWidget extends StatelessWidget {
  const MyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('tapped!');
      },
      child: Container(
        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        alignment: Alignment.center,
        child: const Text(
          'Hello, world!',
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}











//
//class MyOwnWidget extends StatelessWidget {
//  MyOwnWidget({
//    Key key,
//  }) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    bool _isShapeCircle = true;
//
//    return GestureDetector(
//      onTap: () {
//        print('tapped!');
//        _isShapeCircle = !_isShapeCircle;
//      },
//      child: Container(
//        decoration: BoxDecoration(
//            shape: _isShapeCircle ? BoxShape.circle : BoxShape.rectangle,
//            color: _isShapeCircle ? Colors.white : Colors.red,
//            ),
//        alignment: Alignment.center,
//        child: Text(
//          'Hello, world!',
//          textDirection: TextDirection.ltr,
//          style: TextStyle(color: Colors.black, fontSize: 40),
//        ),
//      ),
//    );
//  }
//}
