import 'package:flutter/material.dart';
import 'package:quick_pass/helpers/constants/theme.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Quick pass",
          style: ownTheme(context).display,
        ),
      ),
    );
  }
}
