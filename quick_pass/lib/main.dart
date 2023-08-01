import 'package:flutter/material.dart';
import 'package:quick_pass/start_creen.dart';

import 'helpers/constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuickPass',
      theme: AppTheming.mainTheme,
      home: StartScreen(),
      builder: (context, home) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: home ?? const Center(),
        );
      },
    );
  }
}
