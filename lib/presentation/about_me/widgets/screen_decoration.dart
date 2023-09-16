import 'package:flutter/material.dart';

class ThirdPageDecoration extends StatelessWidget {
  const ThirdPageDecoration({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset('assets/images/blue_light.png'),
          ),
          Center(
            child: child,
          ),
        ],
        // forth page
      ),
    );
  }
}
