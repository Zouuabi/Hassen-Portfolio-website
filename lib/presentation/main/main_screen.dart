import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../about_me/about_me_screen.dart';
import '../contact/contact.dart';
import '../home/home_screen.dart';
import '../projects/projects_screen.dart';
import '../social_links.dart';
import 'cubit/main_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static ScrollController controller = ScrollController();
  static List<GlobalKey> keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return BlocProvider(
      create: (context) => MainCubit(),
      child: Scaffold(
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
            child: BlocConsumer<MainCubit, MainState>(
              listener: (context, state) {
                if (state is MainScrolling) {
                  final key = keys[state.screen];
                  Scrollable.ensureVisible(
                    key.currentContext!,
                    duration: const Duration(seconds: 1),
                    controller.
                  );
                }
              },
              builder: (context, state) {
                return CustomScrollView(
                  controller: controller,
                  slivers: [
                    SliverList.list(children: [
                      Container(key: keys[0], child: const Home()),
                      Container(key: keys[1], child: const ProjectsScreen()),
                      Container(key: keys[2], child: const AboutMeScreen()),
                      Container(key: keys[3], child: const ContactMe()),
                    ])
                  ],
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
