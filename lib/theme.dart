import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Color(0xFF800080), // Deep Purple
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Raleway',
      textTheme: TextTheme(
        headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.purple), // Replaces headline1
        titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black), // Replaces headline6
        bodyLarge: TextStyle(fontSize: 18, color: Colors.black), // Replaces bodyText1
        bodyMedium: TextStyle(fontSize: 16, color: Colors.black54), // Replaces bodyText2
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        ),
      ),
    );
  }
}
