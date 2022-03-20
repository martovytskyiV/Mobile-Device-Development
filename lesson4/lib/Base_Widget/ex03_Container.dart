import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16),
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.blue,
                  Colors.yellow,
                ],
              )
          ),
          padding: const EdgeInsets.only(left: 16, top:16,right: 16,bottom: 23 ),
          margin: const EdgeInsets.all(16),
          child: Image.asset('images/logo.png'),
        ),
      ),
    );
  }
}
