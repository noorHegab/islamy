import 'package:flutter/material.dart';
import 'package:islamy_app/components/components.dart';
import 'package:islamy_app/components/constants/constants.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:islamy_app/modules/data_hadeth.dart';
import 'package:provider/provider.dart';

class HadeethScreen extends StatefulWidget {
  const HadeethScreen({super.key});

  @override
  State<HadeethScreen> createState() => _HadeethScreenState();
}

class _HadeethScreenState extends State<HadeethScreen> {
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
          Padding(
            padding: const EdgeInsets.all(40.0),
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
                    image: AssetImage('assets/images/hadith_header.png'),
                  ),
                  Table(
                    border: const TableBorder.symmetric(),
                    children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'الاحاديث',
                            style: Theme.of(context).textTheme.bodyLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          height: 1,
                          color: Colors.grey,
                        ),
                      ]),
                      for (var hadeth in hadeth) ...[
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Text(
                                hadeth['name'].toString(),
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              onTap: () {
                                navigateTo(
                                    context,
                                    DataHadeth(
                                      filePath: hadeth['path'].toString(),
                                    ));
                              },
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ]),
                      ],
                    ],
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
