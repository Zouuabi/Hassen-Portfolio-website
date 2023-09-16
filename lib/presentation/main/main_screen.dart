import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../about_me/about_me_screen.dart';
import '../contact/contact.dart';
import '../home/home_screen.dart';
import '../projects/projects_screen.dart';
import '../social_links.dart';
import 'cubit/main_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static ItemScrollController itemScrollController = ItemScrollController();
  static ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  static ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  static ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();

  static List<Widget> screens = const [
    Home(),
    ProjectsScreen(),
    AboutMeScreen(),
    ContactMe()
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
                  itemScrollController.scrollTo(
                      index: state.screen,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOutCubic);
                }
              },
              builder: (context, state) {
                return ScrollablePositionedList.builder(
                  itemCount: screens.length,
                  itemBuilder: (context, index) => screens[index],
                  itemScrollController: itemScrollController,
                  scrollOffsetController: scrollOffsetController,
                  itemPositionsListener: itemPositionsListener,
                  scrollOffsetListener: scrollOffsetListener,
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
