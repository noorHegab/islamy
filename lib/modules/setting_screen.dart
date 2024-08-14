import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode = themeNotifier.applight;

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image(
            image: AssetImage(
              themeMode == ThemeMode.dark
                  ? 'assets/images/dark_bg.png'
                  : 'assets/images/default_bg.png',
            ),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              const SizedBox(height: 200.0),
              DropdownButtonFormField<ThemeMode>(
                value: themeMode,
                items: [
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text(
                      "Light",
                      style: TextStyle(
                        color: themeMode == ThemeMode.light
                            ? Colors.amber
                            : Colors.black,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text(
                      "Dark",
                      style: TextStyle(
                        color: themeMode == ThemeMode.dark
                            ? Colors.blueGrey
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
                onChanged: (ThemeMode? newValue) {
                  if (newValue != null) {
                    themeNotifier.changeTheme(newValue);
                  }
                },
                decoration: InputDecoration(
                  labelText: "Choose Theme",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0), // Added spacing
              DropdownButton<Locale>(
                value: EasyLocalization.of(context)!.locale,
                items: [
                  DropdownMenuItem(
                    value: Locale('en', ''),
                    child: Text(
                      'English',
                      style: TextStyle(
                        color: themeMode == ThemeMode.light
                            ? Colors.amber
                            : Colors.black,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: Locale('ar', ''),
                    child: Text(
                      'عربي',
                      style: TextStyle(
                        color: themeMode == ThemeMode.dark
                            ? Colors.blueGrey
                            : Colors.black,
                      ),
                    ),
                  ),
                ],
                onChanged: (Locale? newLocale) {
                  if (newLocale != null) {
                    themeNotifier.changeLanguage(newLocale);
                    EasyLocalization.of(context)!.setLocale(newLocale);
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
