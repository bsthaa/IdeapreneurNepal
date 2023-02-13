import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String head;
  const ReusableTextField({
    required this.head,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 360,
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(width: 2, color: Colors.green),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintText: head,
        ),
      ),
    );
  }
}
