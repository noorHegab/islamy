import 'package:flutter/material.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class ZakahtCalculator extends StatefulWidget {
  const ZakahtCalculator({super.key});

  @override
  _ZakahtCalculatorState createState() => _ZakahtCalculatorState();
}

class _ZakahtCalculatorState extends State<ZakahtCalculator> {
  final TextEditingController assetsController = TextEditingController();
  final TextEditingController debtsController = TextEditingController();
  double zakatAmount = 0.0;

  void _calculateZakat() {
    final double assets = double.tryParse(assetsController.text) ?? 0.0;
    final double debts = double.tryParse(debtsController.text) ?? 0.0;

    if (assets > 0 && debts < assets) {
      final double netAssets = assets - debts;
      zakatAmount = netAssets * 0.025;
    } else {
      zakatAmount = 0.0;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode =
        themeNotifier.isDarkMode ? Brightness.dark : Brightness.light;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Zakat Calculator'),
      // ),
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: assetsController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelText: 'Total Assets (in your currency)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextField(
                  controller: debtsController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: const InputDecoration(
                    labelText: 'Total Debts (in your currency)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _calculateZakat,
                  child: const Text('Calculate Zakat'),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Zakat Amount: ${zakatAmount.toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
