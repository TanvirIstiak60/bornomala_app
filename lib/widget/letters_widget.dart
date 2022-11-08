// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Letters extends StatelessWidget {
  Color? color;
  final String text;
  double size;

  Letters(
      {super.key,
      this.color = const Color(0xFFFBC02D),
      required this.text,
      this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
