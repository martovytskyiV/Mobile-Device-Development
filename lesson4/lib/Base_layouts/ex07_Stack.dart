import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.grey,
          child: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              Image.network(
                  'https://nure.ua/wp-content/uploads/2018/03/panoran-1024x545.png',
                  fit: BoxFit.cover),
              Positioned(
                top: 16,
                right: 16,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  child: Container(
                      color: Colors.red,
                      child: const Icon(Icons.close, color: Colors.white)),
                ),
              ),
              Align(
                  alignment: const Alignment(0.5, 0.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5,
                        (index) => const Icon(Icons.star, color: Colors.white)),
                  ))
            ],          ),        ),      ),    );  }}
