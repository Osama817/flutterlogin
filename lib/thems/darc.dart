import 'package:flutter/material.dart';


ThemeData get darkThem {
  return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: Colors.blueGrey,
      scaffoldBackgroundColor: const Color.fromARGB(255, 199, 114, 114),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Color.fromARGB(255, 21, 14, 14)),
        bodyMedium: TextStyle(color: Color.fromARGB(179, 31, 15, 15)),
        bodySmall: TextStyle(color: Color.fromARGB(255, 16, 8, 8)),
      ));
}