import 'package:flutter/material.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class AzkarCard extends StatefulWidget {
  final int initialCount;
  final String text;
  final TextStyle? textStyle;

  const AzkarCard({
    Key? key,
    required this.initialCount,
    required this.text,
    this.textStyle,
  }) : super(key: key);

  @override
  _AzkarCardState createState() => _AzkarCardState();
}

class _AzkarCardState extends State<AzkarCard> {
  late int count;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    count = widget.initialCount;
  }

  void _onLongPressStart(LongPressStartDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onLongPressEnd(LongPressEndDetails details) {
    setState(() {
      _isPressed = false;
    });

    if (count > 0) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode =
        themeNotifier.isDarkMode ? Brightness.dark : Brightness.light;
    final isDarkMode = themeMode == Brightness.dark;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: double.infinity,
      decoration: BoxDecoration(
        border: isDarkMode
            ? Border.all(
                color: count == 0 ? Colors.red : const Color(0xffB7935F),
                width: 2.0,
              )
            : Border.all(
                color: count == 0 ? Colors.red : Colors.transparent,
                width: 2.0,
              ),
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: _isPressed
            ? [
                BoxShadow(
                  color: Colors.red.withOpacity(0.5),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ]
            : [],
      ),
      margin: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onLongPressStart: _onLongPressStart,
        onLongPressEnd: _onLongPressEnd,
        child: Card(
          color: Theme.of(context).cardTheme.color,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 10.0,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      const Text('عدد التكرار'),
                      const SizedBox(height: 4.0),
                      Text(count.toString()),
                    ],
                  ),
                  const SizedBox(width: 5.0),
                  Expanded(
                    child: Text(
                      widget.text,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
