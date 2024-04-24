import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  ///singleton class
  AppFonts._internal();

  static final AppFonts _instance = AppFonts._internal();

  factory AppFonts(TextStyle style) => _instance;

  static TextStyle style = GoogleFonts.roboto() as TextStyle;
}
