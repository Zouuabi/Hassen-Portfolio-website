import 'package:flutter/material.dart';

class LastPageDecoration extends StatelessWidget {
  const LastPageDecoration({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset('assets/images/yellow_light.png'),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset('assets/images/bottomLines.png'),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset('assets/images/bottom_light.png'),
          ),
          Center(child: child)
        ],
        // forth page
      ),
    );
  }
}
