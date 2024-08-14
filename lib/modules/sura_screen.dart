import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class SuraScreen extends StatefulWidget {
  final String pathFile;
  const SuraScreen({super.key, required this.pathFile});

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  String fileContent = '';
  bool isLoading = true;
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    readFile();
  }

  String convertToArabicNumbers(String input) {
    const arabicDigits = '٠١٢٣٤٥٦٧٨٩';
    const englishDigits = '0123456789';

    final buffer = StringBuffer();

    for (int i = 0; i < input.length; i++) {
      final char = input[i];
      final index = englishDigits.indexOf(char);
      if (index != -1) {
        buffer.write(arabicDigits[index]);
      } else {
        buffer.write(char);
      }
    }

    return buffer.toString();
  }

  Future<void> readFile() async {
    try {
      // Read the file
      String text = await rootBundle.loadString(widget.pathFile);
      // Split the text by lines
      List<String> lines = text.split('\n');
      // Rebuild the text with counters
      text = lines
          .asMap()
          .entries
          .map((entry) => '${entry.value}(${entry.key + 1})')
          .join(' ');
      text = convertToArabicNumbers(text);
      // Update the state with the file content
      setState(() {
        fileContent = text;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        hasError = true;
        isLoading = false;
      });
    }
  }

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
          SafeArea(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : hasError
                    ? const Center(child: Text("Error reading file"))
                    : ListView(
                        physics: const BouncingScrollPhysics(),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  elevation: 10.0,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  color: Theme.of(context).cardTheme.color,
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        fileContent,
                                        style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.notoSansArabic()
                                                  .fontFamily,
                                          fontSize: 30.0,
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
          ),
        ],
      ),
    );
  }
}
