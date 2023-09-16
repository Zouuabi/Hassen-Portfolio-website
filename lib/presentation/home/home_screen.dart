import 'package:flutter/material.dart';

import 'widgets/nav.dart';
import 'widgets/photo.dart';
import 'widgets/screen_decoration.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FirstPageDecoration(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: ViewNavigator(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Row(
                  children: [
                    const Spacer(),
                    const Expanded(
                      flex: 2,
                      child: ProfilePhoto(),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                          'I\'m a full stack developer (React.js & Node.js) with a focus on creating (and occasionally designing) exceptional digital experiences that are fast, accessible, visually appealing, and responsive. Even though I have been creating web applications for over 7 years, I still love it as if it was something new.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                    const Spacer(),
                  ],
                );
              } else {
                return Column(
                  children: [
                    const ProfilePhoto(),
                    const SizedBox(height: 10),
                    Text(
                        'I\'m a full stack developer (React.js & Node.js) with a focus on creating (and occasionally designing) exceptional digital experiences that are fast, accessible, visually appealing, and responsive. Even though I have been creating web applications for over 7 years, I still love it as if it was something new.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge),
                  ],
                );
              }
            }),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 250,
            width: double.infinity,
            child: Image.asset('assets/images/Skills.png'),
          )
        ],
      ),
    );
  }
}
