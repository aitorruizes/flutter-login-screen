import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final BorderRadius borderRadius;
  final String label;
  final Function() onTap;
  final bool hasSubmitted;

  const CustomButton({
    required this.label,
    required this.color,
    required this.borderRadius,
    required this.onTap,
    required this.hasSubmitted,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: GestureDetector(
        onTap: hasSubmitted ? null : onTap,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: borderRadius
          ),
          child: Center(
            child: hasSubmitted
              ? const SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2.0),
              )
              : Text(
                  label, 
                  style: const TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  )
                ),
          ),
        ),
      )
    );
  }

}