import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class DataHadeth extends StatefulWidget {
  final String filePath;

  const DataHadeth({super.key, required this.filePath});

  @override
  State<DataHadeth> createState() => _DataHadethState();
}

class _DataHadethState extends State<DataHadeth> {
  String fileContent = '';

  @override
  void initState() {
    super.initState();
    readFile();
  }

  Future<void> readFile() async {
    try {
      // Read the file using the provided path
      String text = await rootBundle.loadString(widget.filePath);
      text = text.replaceAll('\n', ' ');
      // Update the state with the file content
      setState(() {
        fileContent = text;
      });
    } catch (e) {
      setState(() {
        fileContent = "Error reading file: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // final themeMode = Theme.of(context).brightness;
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
          ListView(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      'اسلامي',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      color: Theme.of(context).cardTheme.color,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            fileContent,
                            style: const TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
