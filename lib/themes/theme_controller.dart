import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController extends GetxController {
  var isDarkMoode = false.obs;
  themeChanger() =>
      isDarkMoode.value ? isDarkMoode.value = false : isDarkMoode.value = true;
}

class MyThemes {
  static final darkTheme = ThemeData(
    useMaterial3: false,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.lalezar(
          color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
      bodySmall: GoogleFonts.ubuntu(color: Colors.white, fontSize: 15),
      labelSmall: GoogleFonts.ubuntu(color: Colors.white, fontSize: 10),
      labelLarge: GoogleFonts.ubuntu(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
      titleSmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 12),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueGrey,
    ),
    unselectedWidgetColor: Colors.white70,
    primaryColorLight: Colors.black,
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: const Color.fromARGB(255, 6, 28, 67),
    secondaryHeaderColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black, opacity: 0.8),
    // textSelectionTheme: const TextSelectionThemeData(
    //   cursorColor: Colors.red,
    //   selectionColor: Colors.green,
    //   selectionHandleColor: Colors.blue,
    // )
    // colorScheme: const ColorScheme.dark()
  );

  static final lightTheme = ThemeData(
    useMaterial3: false,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.lalezar(
          color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      bodySmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 15),
      labelSmall: GoogleFonts.ubuntu(color: Colors.black87, fontSize: 10),
      labelLarge: GoogleFonts.ubuntu(
          color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w400),
      titleSmall: GoogleFonts.ubuntu(color: Colors.black, fontSize: 12),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
    ),
    unselectedWidgetColor: Colors.black54,
    primaryColorLight: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xff7FC7D9),
    secondaryHeaderColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8),

    // colorScheme: const ColorScheme.light()
  );
}
