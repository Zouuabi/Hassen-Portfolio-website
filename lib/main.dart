import 'package:flutter/material.dart';

import 'presentation/main/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          colorScheme:
              const ColorScheme.dark().copyWith(primary: Colors.white)),
      debugShowCheckedModeBanner: false,
      // title
      title: 'Khlifi Hassen',
      // home
      home: const MainScreen(),
    );
  }
}
