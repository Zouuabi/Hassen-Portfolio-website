import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../main/cubit/main_cubit.dart';
import 'custom_button.dart';

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
            SvgPicture.asset(
              'assets/images/logoh.svg',
              width: 30,
              height: 30,
            ),
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
    return BlocProvider(
      create: (context) => MainCubit(),
      child: Row(children: [
        Expanded(
          child: Center(
            child: SvgPicture.asset(
              'assets/images/logoh.svg',
              width: 40,
              height: 40,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                  child: 'Home',
                  onTap: () {
                    BlocProvider.of<MainCubit>(context).scrollTo(0);
                  }),
              CustomButton(
                  child: 'Projects',
                  onTap: () {
                    BlocProvider.of<MainCubit>(context).scrollTo(1);
                  }),
              CustomButton(
                  child: 'About me ',
                  onTap: () {
                    BlocProvider.of<MainCubit>(context).scrollTo(2);
                  }),
              CustomButton(
                  child: 'Contact',
                  onTap: () {
                    BlocProvider.of<MainCubit>(context).scrollTo(3);
                  }),
            ],
          ),
        ),
        // Expanded(
        //   child: Center(
        //       child: OutlinedButton(onPressed: () {}, child: Text('Resume'))),
        // ),
      ]),
    );
  }
}
