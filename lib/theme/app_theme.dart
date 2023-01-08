import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),

      //FloatingactionButtons
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //elevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ),

      //Inputs Theme
      inputDecorationTheme: const InputDecorationTheme(

        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), 
              topRight: Radius.circular(10)),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), 
              topRight: Radius.circular(10)),
        ),
      ));


///////////////////////////////////////////////////////////////////////////////



  static final ThemeData darkTheme = ThemeData.dark().copyWith(

      //Color primario
      primaryColor: Colors.indigo,

      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.grey,

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),

      //FloatingactionButtons
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary));
}
