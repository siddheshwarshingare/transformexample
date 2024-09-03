import 'package:flutter/material.dart';

class Transformcalss extends StatelessWidget {
  final String imageName;
  Transformcalss({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageName,
          height: 400,
          width: 400,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
