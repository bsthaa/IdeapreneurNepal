import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String head;
  final VoidCallback? onTap;
  const ReusableButton({
    required this.onTap,
    required this.head,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(head),
        style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Color(0xFF35B14F),
            textStyle: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Roboto',
            )),
      ),
    );
  }
}
