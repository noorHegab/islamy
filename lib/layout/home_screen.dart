import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/modules/elsalah_screen.dart';
import 'package:islamy_app/modules/hadeeth_screen.dart';
import 'package:islamy_app/modules/initial_screen.dart';
import 'package:islamy_app/modules/quran_screen.dart';
import 'package:islamy_app/modules/radio_screen.dart';
import 'package:islamy_app/modules/tasbeeh_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0; // Start with the first tab

  // List of screens to navigate between
  final List<Widget> screens = [
    InitialScreen(),
    QuranScreen(),
    HadeethScreen(),
    TasbeehScreen(),
    PrayerTimesScreen(),
    RadioScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: Theme.of(context).bottomNavigationBarTheme.type,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'label.home'.tr(), // Localized label
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(AssetImage('assets/images/quran.png')),
            label: 'label.quran'.tr(), // Localized label
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
            label: 'label.hadiths'.tr(), // Localized label
          ),
          BottomNavigationBarItem(
            icon: const ImageIcon(AssetImage('assets/images/sebha.png')),
            label: 'label.sebha'.tr(), // Localized label
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.timelapse),
            label: 'label.prayer'.tr(), // Localized label
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.radio),
            label: 'label.radio'.tr(), // Localized label
          ),
        ],
        selectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
    );
  }
}
