import 'package:flutter/material.dart';

class TextFormatting extends StatelessWidget {
  const TextFormatting({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
    );
  }
}
