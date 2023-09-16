import 'package:flutter/material.dart';

class FirstPageDecoration extends StatelessWidget {
  const FirstPageDecoration({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/lines.png',
            ),
          ),
          Positioned(
              bottom: 0, child: Image.asset('assets/images/Light top.png')),
          Positioned(
              right: 0, child: Image.asset('assets/images/yellow_light.png')),
          Positioned(
            left: 0,
            child: Image.asset('assets/images/blue_light.png'),
          ),
          Center(
            child: child,
          )
        ],
      ),
    );
  }
}
