import 'package:flutter/material.dart';

class UsedTechnology extends StatelessWidget {
  const UsedTechnology({super.key, required this.child});
  final String child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(255, 242, 240, 246), blurRadius: 3)
          ],
          color: const Color.fromARGB(255, 68, 87, 165),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        child,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
