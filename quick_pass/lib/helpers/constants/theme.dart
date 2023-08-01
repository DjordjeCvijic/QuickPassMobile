import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheming {
  static TextStyle selectedTextFont = GoogleFonts.firaSans();
  static final mainTheme = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
  )..addOwn(
      OwnThemeFields(
        display: selectedTextFont.copyWith(
          color: Colors.black,
          fontSize: 64,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
}

class OwnThemeFields {
  final TextStyle? display;

  const OwnThemeFields({
    required this.display,
  });

  factory OwnThemeFields.empty() {
    return const OwnThemeFields(
      display: TextStyle(),
    );
  }
}

extension ThemeDataExtensions on ThemeData {
  // ignore: prefer_final_fields
  static Map<InputDecorationTheme, OwnThemeFields> _own = {};

  void addOwn(OwnThemeFields own) {
    _own[inputDecorationTheme] = own;
  }

  static OwnThemeFields? empty;

  OwnThemeFields own() {
    var o = _own[inputDecorationTheme];

    return o!;
  }
}

OwnThemeFields ownTheme(BuildContext context) => Theme.of(context).own();
