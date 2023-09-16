import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              SvgPicture.asset(
                'assets/images/profileBackroung.svg',
              ),
              Image.asset(
                'assets/images/profilePic.png',
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Hassen Khlifi',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 5),
        Text(
          'Software Engineer,Mentor and Content Creator at Youtube @Hassen',
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 5),
        const SizedBox(height: 5),
        OutlinedButton(onPressed: () {}, child: const Text('Resume'))
      ],
    );
  }
}
