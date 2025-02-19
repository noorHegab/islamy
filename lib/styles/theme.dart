import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/styles/colors.dart';
import 'package:islamy_app/styles/text_theme.dart';

ThemeData darkTheme = ThemeData(
  primarySwatch: Colors.orange,
  scaffoldBackgroundColor: const Color(0xff333739),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xff333739),
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: Color(0xff333739),
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      size: 30.0,
      color: Colors.white,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: defaultColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color(0xffFACC1D),
    unselectedItemColor: Color(0xffF8F8F8),
    backgroundColor: Color(0xff141A2E),
    elevation: 15.0,
  ),
  textTheme: TTextTheme.darkTextTheme,
  dividerTheme: const DividerThemeData(
    color: Color(0xffFACC1D),
  ),
  cardTheme: const CardTheme(
    color: Color(0xff141A2E),
  ),
  iconTheme: const IconThemeData(
    color: Color(0xffFACC1D),
  ),
);

ThemeData lightTheme = ThemeData(
  primarySwatch: defaultColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      size: 30.0,
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.orange,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color(0xff242424),
    unselectedItemColor: Color(0xffF8F8F8),
    backgroundColor: Color(0xffB7935F),
    elevation: 15.0,
  ),
  textTheme: TTextTheme.lightTextTheme,
  dividerTheme: const DividerThemeData(
    color: Colors.grey,
  ),
  cardTheme: const CardTheme(
    color: Colors.white,
  ),
  iconTheme: const IconThemeData(
    color: Color(0xffB7935F),
  ),
);
