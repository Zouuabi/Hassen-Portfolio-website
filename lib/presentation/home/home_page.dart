import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../social_links.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 24, 65),
      body: Stack(children: [
        // side info UI
        Padding(
          padding: EdgeInsets.all(size.width * 0.02),
          child: SideInfoSection(
            screenHeight: size.height,
            screenWidth: size.width,
          ),
        ),
        // Homa page
        Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverList.list(children: [
                FirstPageDecoration(
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
                                Expanded(
                                  flex: 2,
                                  child: ProfilePhoto(),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'I\'m a full stack developer (React.js & Node.js) with a focus on creating (and occasionally designing) exceptional digital experiences that are fast, accessible, visually appealing, and responsive. Even though I have been creating web applications for over 7 years, I still love it as if it was something new.',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Spacer(),
                              ],
                            );
                          } else {
                            return Column(
                              children: [
                                ProfilePhoto(),
                                Text(
                                  'I\'m a full stack developer (React.js & Node.js) with a focus on creating (and occasionally designing) exceptional digital experiences that are fast, accessible, visually appealing, and responsive. Even though I have been creating web applications for over 7 years, I still love it as if it was something new.',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            );
                          }
                        }),
                      )
                    ],
                  ),
                ),
                SecondPageDecoration(
                  child: Text('Second One'),
                ),
                ThirdPageDecoration(),
                FourthPageDecoration(),
                // LastPageDecoration(),
              ])
            ],
          ),
        ),
      ]),
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              SvgPicture.asset('assets/images/profileBackroung.svg'),
              Image.asset('assets/images/profilePic.png')
            ],
          ),
        ),
        Text('Oubeid Zouabi'),
        Text(
          'Software Engineer,Mentor and Content Creator at Youtube @Zouabi',
          textAlign: TextAlign.center,
        ),
        OutlinedButton(onPressed: () {}, child: Text('Resume'))
      ],
    );
  }
}

class ViewNavigator extends StatelessWidget {
  const ViewNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // print(screen.width);
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth > 600) {
        return const NavigationBar();
      } else {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset('assets/images/Logo.svg'),
            Row(
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset('assets/images/hamburgerIcon.svg'),
              ],
            )
          ],
        );
      }
    }));
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Center(
          child: SvgPicture.asset('assets/images/Logo.svg'),
        ),
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              child: const Text(
                'Home',
              ),
              onPressed: () {},
            ),
            TextButton(
              child: const Text(
                'My Work',
              ),
              onPressed: () {},
            ),
            TextButton(
              child: const Text(
                'About me',
              ),
              onPressed: () {},
            ),
            TextButton(
              child: const Text(
                'Contact',
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      // Expanded(
      //   child: Center(
      //       child: OutlinedButton(onPressed: () {}, child: Text('Resume'))),
      // ),
    ]);
  }
}

class LastPageDecoration extends StatelessWidget {
  const LastPageDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ],
        // forth page
      ),
    );
  }
}

class FourthPageDecoration extends StatelessWidget {
  const FourthPageDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset('assets/images/yellow_light.png'),
          ),
        ],
        // forth page
      ),
    );
  }
}

class ThirdPageDecoration extends StatelessWidget {
  const ThirdPageDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset('assets/images/blue_light.png'),
          )
        ],
        // forth page
      ),
    );
  }
}

class SecondPageDecoration extends StatelessWidget {
  const SecondPageDecoration({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Stack(
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
          )
        ],
      ),
    );
  }
}

class FirstPageDecoration extends StatelessWidget {
  const FirstPageDecoration({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
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

Scaffold methodBokhel(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/desktopBackground.png',
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: EdgeInsets.only(
                  // ! testing
                  right: MediaQuery.of(context).size.width * 0.1,
                  left: MediaQuery.of(context).size.width * 0.1),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // app bar
                    ViewNavigator(),
                    //Bloc 1
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      color: Color.fromARGB(31, 158, 158, 158),
                      height: 500,
                      width: double.infinity,
                      child: Center(
                          child: ElevatedButton(
                        child: const Text('PRess'),
                        onPressed: () {
                          // controller.animateTo(700,
                          //     duration: Duration(milliseconds: 300),
                          //     curve: Curves.linear);
                        },
                      )),
                    ),
                    //Bloc 2 projects
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      color: Color.fromARGB(31, 158, 158, 158),
                      height: 700,
                      width: double.infinity,
                    ),
                    //Bloc 3
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      color: Color.fromARGB(31, 158, 158, 158),
                      height: 400,
                      width: double.infinity,
                    ),
                    //Bloc 4
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      color: Color.fromARGB(31, 158, 158, 158),
                      height: 600,
                      width: double.infinity,
                    ),
                    //Bloc 5
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      color: Color.fromARGB(31, 158, 158, 158),
                      height: 400,
                      width: double.infinity,
                    ),
                  ]),
            ),
          ],
        ),
      )));
}
