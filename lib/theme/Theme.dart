import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.black,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.black,
    onPrimary: Colors.white,
    primaryContainer: const Color.fromARGB(255, 240, 236, 236),
  ),
  dialogBackgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.white,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    bodyMedium: GoogleFonts.openSans(
        fontSize: 14.0,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w400,
        color: Colors.black),
    headlineLarge: GoogleFonts.openSans(
        fontSize: 24.0,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w800,
        color: Colors.black),
    headlineMedium: GoogleFonts.openSans(
        fontSize: 18.0,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w600,
        color: Colors.black),
    headlineSmall: GoogleFonts.openSans(
        letterSpacing: 1.2,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: Colors.black),
    labelMedium: GoogleFonts.openSans(
        fontSize: 16.0,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w600,
        color: Colors.white),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),
);

//Dark theme
final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.dark(
      surface: Colors.black,
      primary: Colors.white,
      onPrimary: Colors.black,
      primaryContainer: const Color.fromARGB(255, 95, 88, 88),
    ),
    dialogBackgroundColor: Colors.black,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.openSans(
          fontSize: 20,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w700,
          color: Colors.white),
      bodyMedium: GoogleFonts.openSans(
          fontSize: 14.0,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w400,
          color: Colors.white),
      headlineLarge: GoogleFonts.openSans(
          fontSize: 24.0,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w800,
          color: Colors.white),
      headlineMedium: GoogleFonts.openSans(
          fontSize: 18.0,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w600,
          color: Colors.white),
      headlineSmall: GoogleFonts.openSans(
          fontSize: 16.0,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w500,
          color: Colors.white),
      labelMedium: GoogleFonts.openSans(
          fontSize: 16.0,
          letterSpacing: 1.2,
          fontWeight: FontWeight.w600,
          color: Colors.black),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ));

//**
//dadj */
