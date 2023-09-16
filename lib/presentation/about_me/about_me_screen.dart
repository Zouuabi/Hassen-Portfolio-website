import 'package:flutter/Material.dart';

import 'widgets/screen_decoration.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ThirdPageDecoration(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Row(
              children: [
                Expanded(child: Image.asset('assets/images/about_me.png')),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My Story',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '''I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.\n
                        I began my journey as a web developer in 2015, and since then, I've continued to grow and evolve as a developer, taking on new challenges and learning the latest technologies along the way. Now, in my early thirties, 7 years after starting my web development journey, I'm building cutting-edge web applications using modern technologies such as Next.js, TypeScript, Nestjs, Tailwindcss, Supabase and much more.\n
                        I am very much a progressive thinker and enjoy working on products end to end, from ideation all the way to development.\n
                        When I'm not in full-on developer mode, you can find me hovering around on twitter or on indie hacker, witnessing the journey of early startups or enjoying some free time. You can follow me on Twitter where I share tech-related bites and build in public, or you can follow me on GitHub.\n
                        ''',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                )),
              ],
            );
          } else {
            return Column(
              children: [
                SizedBox(
                    height: 250,
                    child: Image.asset('assets/images/about_me.png')),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My Story',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      '''I'm a passionate, self-proclaimed designer who specializes in full stack development (React.js & Node.js). I am very enthusiastic about bringing the technical and visual aspects of digital products to life. User experience, pixel perfect design, and writing clear, readable, highly performant code matters to me.\n
                    I began my journey as a web developer in 2015, and since then, I've continued to grow and evolve as a developer, taking on new challenges and learning the latest technologies along the way. Now, in my early thirties, 7 years after starting my web development journey, I'm building cutting-edge web applications using modern technologies such as Next.js, TypeScript, Nestjs, Tailwindcss, Supabase and much more.\n
                    I am very much a progressive thinker and enjoy working on products end to end, from ideation all the way to development.\n
                    When I'm not in full-on developer mode, you can find me hovering around on twitter or on indie hacker, witnessing the journey of early startups or enjoying some free time. You can follow me on Twitter where I share tech-related bites and build in public, or you can follow me on GitHub.\n
                    ''',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ],
            );
          }
        },
      ),
    ));
  }
}
