import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xff5D9CEC);

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xffDFECDB),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Color(0xff61E757),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,

        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff060E1E),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Color(0xff61E757),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,

      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey,
      elevation: 0,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
  );
}
