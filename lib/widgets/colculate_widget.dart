import 'package:flutter/material.dart';

class CalculateWidget extends StatelessWidget {
  const CalculateWidget({
    super.key,
    required this.onTap,
    required this.text,
  });

  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.cyan,
        height: MediaQuery.of(context).size.height * 0.07,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
