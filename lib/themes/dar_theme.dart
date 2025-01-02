import 'package:flutter/material.dart';

ThemeData get darTheme {
  return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: Colors.blueGrey,
      scaffoldBackgroundColor: const Color.fromARGB(255, 158, 98, 98),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white70),
        bodySmall: TextStyle(color: Colors.white),
      ));
}
