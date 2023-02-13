import 'package:flutter/material.dart';

class heading2 extends StatelessWidget {
  String head;
  heading2({
    required this.head,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      head,
      style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: Colors.black,
          fontWeight: FontWeight.w600),
    );
  }
}
