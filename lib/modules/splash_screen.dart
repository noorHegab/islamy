import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamy_app/components/components.dart';
import 'package:islamy_app/layout/home_screen.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      navigateAndFinish(context, const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode =
        themeNotifier.isDarkMode ? Brightness.dark : Brightness.light;
    return Scaffold(
        body: Image(
      image: AssetImage(
        themeMode == Brightness.dark
            ? 'assets/images/splash – 1.png'
            : 'assets/images/Group 8.png',
      ),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.fill,
    ));
  }
}
