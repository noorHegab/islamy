import 'package:flutter/material.dart';
import 'package:islamy_app/components/constants/constants.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:islamy_app/widgets/azkar_elsalah.dart';
import 'package:provider/provider.dart';

// قائمة الأدعية

class AdeiaScreen extends StatelessWidget {
  const AdeiaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode =
        themeNotifier.isDarkMode ? Brightness.dark : Brightness.light;

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
          Container(
            alignment: AlignmentDirectional.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: ad3ia.map((dua) {
                  return Column(
                    children: [
                      const SizedBox(height: 20.0),
                      AdeiaCard(
                        text: dua,
                        textStyle: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
