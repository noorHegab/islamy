import 'package:flutter/material.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class AdeiaCard extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const AdeiaCard({
    Key? key,
    required this.text,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode =
        themeNotifier.isDarkMode ? Brightness.dark : Brightness.light;
    final isDarkMode = themeMode == Brightness.dark;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: isDarkMode
            ? Border.all(color: const Color(0xffB7935F), width: 2.0)
            : Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
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
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }
}
