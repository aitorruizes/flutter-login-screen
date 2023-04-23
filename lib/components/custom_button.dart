
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final BorderRadius borderRadius;
  final String label;

  const CustomButton({
    required this.label,
    required this.color,
    required this.borderRadius,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius
        ),
        child: Center(
          child: Text(
            label, 
            style: const TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
              fontSize: 18
            )
          ),
        ),
      ),
    );
  }
}