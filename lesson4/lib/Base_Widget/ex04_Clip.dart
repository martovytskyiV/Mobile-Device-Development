import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClipSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(40) ),//ClipPath(clipper: TriangleClipper(), //змінити  ClipRRect
                                                                                                                        // для демонстрації
                                                                                                                        // СustomClipper
        child: Image.asset(
            "images/img.png"),
      ),
    );
  }
}
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}