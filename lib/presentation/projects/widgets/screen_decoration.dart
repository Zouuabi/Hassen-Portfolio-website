import 'package:flutter/widgets.dart';

class SecondPageDecoration extends StatelessWidget {
  const SecondPageDecoration({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset('assets/images/yellow_light.png')),
        Positioned(
          left: 0,
          bottom: 0,
          child: Image.asset('assets/images/blue_light.png'),
        ),
        Positioned(
          top: 0,
          child: Image.asset('assets/images/blue_light.png'),
        ),
        Center(
          child: child,
        ),
      ],
    );
  }
}
