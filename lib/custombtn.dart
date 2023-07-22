import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.color = Colors.blue,
      this.height = 50,
      this.widget = 100});

  final GestureTapCallback onPressed;
  final String text;
  final Color color;
  final double height;
  final double widget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
