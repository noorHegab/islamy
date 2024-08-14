import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/components/components.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:islamy_app/modules/ad3ea_screen.dart';
import 'package:islamy_app/modules/azkar_screen.dart';
import 'package:islamy_app/modules/elzakaht_calculator_screen.dart';
import 'package:islamy_app/modules/setting_screen.dart';
import 'package:provider/provider.dart';

import '../components/constants/constants.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _currentDuaIndex = 0;

  void _changeDua() {
    setState(() {
      _currentDuaIndex = (_currentDuaIndex + 1) % ad3eyah.length;
    });
  }

  void _copyDua() {
    final duaText = ad3eyah[_currentDuaIndex];
    Clipboard.setData(ClipboardData(text: duaText)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('تم نسخ الدعاء إلى الحافظة'),
          duration: Duration(seconds: 2),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode =
        themeNotifier.isDarkMode ? Brightness.dark : Brightness.light;
    final isDarkMode = themeMode == Brightness.dark;

    BoxDecoration cardDecoration = BoxDecoration(
      border: isDarkMode
          ? Border.all(color: const Color(0xffB7935F), width: 2.0)
          : Border.all(color: Colors.transparent),
      borderRadius: BorderRadius.circular(
        25.0,
      ),
    );

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image(
            image: AssetImage(
              themeMode == Brightness.dark
                  ? 'assets/images/dark_bg.png'
                  : 'assets/images/default_bg.png',
            ),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'اسلامي',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: AlignmentDirectional.topEnd,
                    margin: const EdgeInsets.all(20.0),
                    child: IconButton(
                      icon: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return RotationTransition(
                            turns: child.key ==
                                    ValueKey<bool>(themeNotifier.isDarkMode)
                                ? Tween<double>(begin: 1, end: 0.5)
                                    .animate(animation)
                                : Tween<double>(begin: 0.5, end: 1)
                                    .animate(animation),
                            child: FadeTransition(
                                opacity: animation, child: child),
                          );
                        },
                        child: Icon(
                          themeNotifier.isDarkMode
                              ? Icons.wb_sunny
                              : Icons.nights_stay,
                          key: ValueKey<bool>(themeNotifier.isDarkMode),
                          color: themeNotifier.isDarkMode
                              ? const Color(0xffFACC1D)
                              : const Color(0xffB7935F),
                          size: 50.0,
                        ),
                      ),
                      onPressed: () {
                        navigateTo(context, SettingScreen());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 200.0,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: cardDecoration,
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      color: Theme.of(context).cardTheme.color,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 10.0,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            ad3eyah[_currentDuaIndex],
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      buildComponent(
                        context,
                        cardDecoration,
                        function: _changeDua,
                        text: 'تغيير الدعاء',
                        path: 'assets/icons/flip.png',
                      ),
                      buildComponent(
                        context,
                        cardDecoration,
                        function: _copyDua,
                        text: 'نسخ الدعاء',
                        path: 'assets/icons/copy.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      buildComponent(
                        context,
                        cardDecoration,
                        function: () {
                          navigateTo(context, AzkarScreen(list: azkarElsalah));
                        },
                        text: 'اذكار المساء',
                        path: 'assets/icons/night-mode 1.png',
                      ),
                      buildComponent(
                        context,
                        cardDecoration,
                        function: () {
                          navigateTo(
                              context, const AzkarScreen(list: azkarMorning));
                        },
                        text: 'اذكار الصباح',
                        path: 'assets/icons/brightness.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      buildComponent(
                        context,
                        cardDecoration,
                        function: () {
                          navigateTo(
                              context,
                              AzkarScreen(
                                list: azkar,
                              ));
                        },
                        text: 'اذكار الاستيقاظ',
                        path: 'assets/icons/brightness-and-contrast.png',
                      ),
                      buildComponent(
                        context,
                        cardDecoration,
                        function: () {
                          navigateTo(context, AzkarScreen(list: azkarData));
                        },
                        text: 'اذكار بعد الصلاة',
                        path: 'assets/icons/moslem.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      buildComponent(
                        context,
                        cardDecoration,
                        function: () {
                          navigateTo(context, const AdeiaScreen());
                        },
                        text: 'ادعيه مختاره',
                        path: 'assets/icons/praying.png',
                      ),
                      buildComponent(
                        context,
                        cardDecoration,
                        function: () {
                          navigateTo(context, const ZakahtCalculator());
                        },
                        text: 'حاسبة الزكاة',
                        path: 'assets/icons/calculator.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 300.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
