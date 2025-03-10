import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.black,
  colorScheme: ColorScheme.light(
    surface: Colors.white,
    primary: Colors.black,
    onPrimary: Colors.white,
    primaryContainer: const Color.fromARGB(255, 251, 249, 247),
  ),
  scaffoldBackgroundColor: Colors.white,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.white,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: TextTheme(
    titleLarge: GoogleFonts.bangers(
        fontSize: 24,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w700,
        color: Colors.black.withValues(alpha: 0.9)),
    bodyLarge: GoogleFonts.openSans(
      fontSize: 18,
      letterSpacing: 1.1,
      fontWeight: FontWeight.w600,
      color: Colors.black.withValues(alpha: 0.8),
    ),
    bodyMedium: GoogleFonts.openSans(
      fontSize: 14.0,
      letterSpacing: 1.1,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodySmall: GoogleFonts.openSans(
      fontSize: 12.0,
      letterSpacing: 1.1,
      fontWeight: FontWeight.w400,
      color: Colors.black.withValues(alpha: 0.6),
    ),
    headlineLarge: GoogleFonts.openSans(
        fontSize: 20.0,
        letterSpacing: 1.1,
        fontWeight: FontWeight.w700,
        color: Colors.black.withValues(alpha: 0.9)),
    headlineMedium: GoogleFonts.openSans(
        fontSize: 16.0,
        letterSpacing: 1.1,
        fontWeight: FontWeight.w600,
        color: Colors.black.withValues(alpha: 0.9)),
    headlineSmall: GoogleFonts.openSans(
        letterSpacing: 1.1,
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
        color: Colors.black),
    labelMedium: GoogleFonts.openSans(
        fontSize: 16.0,
        letterSpacing: 1.1,
        fontWeight: FontWeight.w600,
        color: Colors.white),
  ),
  appBarTheme:
      AppBarTheme(backgroundColor: Colors.black, foregroundColor: Colors.white),
);

//Dark theme
final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.dark(
      surface: Colors.black,
      primary: Colors.white,
      onPrimary: Colors.black,
      primaryContainer: const Color.fromARGB(255, 251, 249, 247),
    ),
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(
      titleLarge: GoogleFonts.bangers(
        fontSize: 24,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.openSans(
          fontSize: 18,
          letterSpacing: 1.1,
          fontWeight: FontWeight.w700,
          color: Colors.white),
      bodyMedium: GoogleFonts.openSans(
        fontSize: 14.0,
        letterSpacing: 1.1,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.openSans(
        fontSize: 12.0,
        letterSpacing: 1.1,
        fontWeight: FontWeight.w400,
        color: Colors.grey,
      ),
      headlineLarge: GoogleFonts.openSans(
          fontSize: 20.0,
          letterSpacing: 1.1,
          fontWeight: FontWeight.w700,
          color: Colors.white),
      headlineMedium: GoogleFonts.openSans(
          fontSize: 16.0,
          letterSpacing: 1.1,
          fontWeight: FontWeight.w600,
          color: Colors.white),
      headlineSmall: GoogleFonts.openSans(
          fontSize: 14.0,
          letterSpacing: 1.1,
          fontWeight: FontWeight.w500,
          color: Colors.white),
      labelMedium: GoogleFonts.openSans(
          fontSize: 16.0,
          letterSpacing: 1.1,
          fontWeight: FontWeight.w600,
          color: Colors.black),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ));
