import 'package:flutter/material.dart';

import 'presentation/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          colorScheme:
              const ColorScheme.dark().copyWith(primary: Colors.white)),
      debugShowCheckedModeBanner: false,
      title: 'Oubeid Zouabi',
      home: HomePage(),
    );
  }
}
