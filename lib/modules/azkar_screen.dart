import 'package:flutter/material.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:islamy_app/widgets/azkar.dart';
import 'package:provider/provider.dart';

class AzkarScreen extends StatelessWidget {
  final List<Map<String, String>>? list;

  const AzkarScreen({
    Key? key,
    required this.list,
  }) : super(key: key);

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
                children: list!.map((azkar) {
                  return Column(
                    children: [
                      const SizedBox(height: 20.0),
                      AzkarCard(
                        initialCount:
                            int.parse(azkar['count']!), // Convert count to int
                        text: azkar['text']!,
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
