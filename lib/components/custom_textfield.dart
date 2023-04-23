import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String leftIcon;
  final bool hasEyeIcon;
  final TextEditingController controller;

  const CustomTextField({
    required this.label,
    required this.leftIcon,
    required this.hasEyeIcon,
    required this.controller,
    Key? key,
  }) : super(key: key);
  
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _showPassword = false;

  void handleShowPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Icon(
                widget.leftIcon == "email" ? Icons.email : widget.leftIcon == "lock" ? Icons.lock : null,
                color: Colors.grey[500]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  obscureText: widget.leftIcon == "email" ? false : _showPassword ? false : true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.label,
                  ),
                  controller: widget.controller,
                ),
              ),
            ),
            widget.hasEyeIcon ? IconButton(
              onPressed: handleShowPassword,
              icon: Icon(_showPassword ? Icons.visibility : Icons.visibility_off),
              color: Colors.grey[500],
            ) : const SizedBox()
          ],
        ),
      ),
    );
  }
}