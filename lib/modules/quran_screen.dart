import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/components/components.dart';
import 'package:islamy_app/components/constants/constants.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

import 'sura_screen.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  final textController = TextEditingController();
  List<Map<String, Object>> search = [];

  void getSearch(String query) {
    setState(() {
      if (query.isEmpty) {
        search = [];
      } else {
        search = suras.where((sura) {
          final name = _getSuraName(sura['name'] as String);
          return name.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  String _getSuraName(String suraName) {
    final translatedName = tr('name.$suraName');
    return translatedName ??
        suraName; // استخدام اسم السورة الأصلي إذا كانت الترجمة غير موجودة
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
          Image.asset(
            themeMode == Brightness.dark
                ? 'assets/images/dark_bg.png'
                : 'assets/images/default_bg.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 15.0),
                TextFormField(
                  controller: textController,
                  style: Theme.of(context).textTheme.bodyLarge,
                  onChanged: (value) => getSearch(value),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Search must not be empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'بحث'.tr(),
                    labelStyle: Theme.of(context).textTheme.bodyLarge,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            Theme.of(context).dividerTheme.color ?? Colors.blue,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                if (search.isNotEmpty)
                  Expanded(
                    child: ListView.builder(
                      itemCount: search.length,
                      itemBuilder: (context, index) {
                        final sura = search[index];
                        final suraName = _getSuraName(sura['name'] as String);
                        return ListTile(
                          title: Text(
                            suraName,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          subtitle: Text(
                            'عدد الآيات: ${sura['ayahs']}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          onTap: () {
                            navigateTo(
                              context,
                              SuraScreen(
                                pathFile: sura['path']?.toString() ?? '',
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                if (search.isEmpty)
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          const Text(
                            'اسلامي',
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                          const Image(
                            image: AssetImage(
                                'assets/images/qur2an_screen_logo.png'),
                          ),
                          Table(
                            border: const TableBorder.symmetric(),
                            children: List.generate(
                              suras.length,
                              (index) {
                                final sura = suras[index];
                                final suraName =
                                    _getSuraName(sura['name'] as String);
                                return TableRow(
                                  children: [
                                    TableCell(
                                      child: InkWell(
                                        onTap: () {
                                          navigateTo(
                                            context,
                                            SuraScreen(
                                              pathFile:
                                                  sura['path']?.toString() ??
                                                      '',
                                            ),
                                          );
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.all(8.0),
                                          padding: const EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .cardTheme
                                                .color,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Text(
                                            suraName,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
