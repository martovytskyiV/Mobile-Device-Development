import 'package:flutter/material.dart';

class ImageSample extends StatelessWidget {
  const ImageSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pdi = MediaQuery.of(context).size.toString();

    return  Column(children: [
      const Image( image: AssetImage('images/logo.png'),),
      Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
    Text( pdi ,
      style: const TextStyle( fontSize: 14,  decoration: TextDecoration.none,

      ),
    ),
    ]);
  }
}
