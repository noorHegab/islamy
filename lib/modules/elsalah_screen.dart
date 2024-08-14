import 'package:adhan/adhan.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:islamy_app/layout/location.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class PrayerTimesScreen extends StatefulWidget {
  @override
  _PrayerTimesScreenState createState() => _PrayerTimesScreenState();
}

class _PrayerTimesScreenState extends State<PrayerTimesScreen> {
  late Future<PrayerTimes> _prayerTimesFuture;
  final LocationService _locationService = LocationService();

  @override
  void initState() {
    super.initState();
    _prayerTimesFuture = _getPrayerTimes();
  }

  Future<PrayerTimes> _getPrayerTimes() async {
    Position? position = await _locationService.getCurrentLocation();

    if (position == null) {
      throw Exception('Unable to get location');
    }

    final myCoordinates = Coordinates(position.latitude, position.longitude);
    final params = CalculationMethod.egyptian.getParameters();
    params.madhab = Madhab.hanafi;
    return PrayerTimes.today(myCoordinates, params);
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    final themeMode =
        themeNotifier.isDarkMode ? Brightness.dark : Brightness.light;

    return Scaffold(
      body: FutureBuilder<PrayerTimes>(
        future: _prayerTimesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('حدث خطأ أثناء الحصول على الموقع'));
          } else if (snapshot.hasData) {
            final prayerTimes = snapshot.data!;
            final prayerNames = [
              'الفجر',
              'الشروق',
              'الظهر',
              'العصر',
              'المغرب',
              'العشاء'
            ];
            final prayerTimesFormatted = [
              DateFormat.jm().format(prayerTimes.fajr),
              DateFormat.jm().format(prayerTimes.sunrise),
              DateFormat.jm().format(prayerTimes.dhuhr),
              DateFormat.jm().format(prayerTimes.asr),
              DateFormat.jm().format(prayerTimes.maghrib),
              DateFormat.jm().format(prayerTimes.isha),
            ];

            _schedulePrayerNotifications(prayerTimes);
            _scheduleRepeatedNotifications();

            return Stack(
              alignment: Alignment.center,
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
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Text(
                          'اسلامي',
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      const SizedBox(height: 300.0),
                      ElevatedButton(
                        onPressed: () {
                          AwesomeNotifications().createNotification(
                            content: NotificationContent(
                              id: 1,
                              channelKey: 'basic key',
                              title: 'islamy',
                              body: 'صلي علي سيدنا محمد',
                              bigPicture: 'assets/images/hadith_header.png',
                              notificationLayout: NotificationLayout.BigPicture,
                            ),
                          );
                        },
                        child: const Text('notifications'),
                      ),
                      Table(
                        border: TableBorder.all(color: const Color(0xffB7935F)),
                        children: [
                          TableRow(
                            children: [
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'الوقت',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              TableCell(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'الصلاة',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          for (int i = 0; i < prayerNames.length; i++)
                            TableRow(
                              children: [
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      prayerTimesFormatted[i],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.normal),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      prayerNames[i],
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: Text('لا توجد بيانات لعرضها'));
          }
        },
      ),
    );
  }

  void _schedulePrayerNotifications(PrayerTimes prayerTimes) {
    final prayerNames = [
      'الفجر',
      'الشروق',
      'الظهر',
      'العصر',
      'المغرب',
      'العشاء'
    ];
    final prayerTimesList = [
      prayerTimes.fajr,
      prayerTimes.sunrise,
      prayerTimes.dhuhr,
      prayerTimes.asr,
      prayerTimes.maghrib,
      prayerTimes.isha,
    ];

    for (int i = 0; i < prayerTimesList.length; i++) {
      AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: i + 1,
          channelKey: 'basic key',
          title: 'وقت الصلاة',
          body: 'حان الآن موعد صلاة ${prayerNames[i]}',
          notificationLayout: NotificationLayout.Default,
        ),
        schedule: NotificationCalendar.fromDate(date: prayerTimesList[i]),
      );
    }
  }

  void _scheduleRepeatedNotifications() {
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_key',
        title: 'تذكير',
        body: 'صلي علي سيدنا محمد',
        notificationLayout: NotificationLayout.Default,
      ),
      schedule: NotificationInterval(
        interval: 30 * 60, // 30 minutes
        timeZone: null,
        repeats: true,
      ),
    );
  }
}
