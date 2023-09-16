import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.child, required this.onTap});
  final String child;
  final VoidCallback onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isOnhaver = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      hoverColor: null,
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          isOnhaver = value;
        });
      },
      child: Text(
        widget.child,
        style: TextStyle(
            letterSpacing: 2,
            color: isOnhaver ? Colors.yellow : Colors.white,
            fontSize: isOnhaver ? 17 : 15),
      ),
    );
  }
}
