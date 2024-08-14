import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/layout/notifier.dart';
import 'package:provider/provider.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;

  void _togglePlayback() async {
    try {
      if (_isPlaying) {
        await _audioPlayer.stop();
      } else {
        await _audioPlayer.play(AssetSource('assets/sounds/018.mp3'));
      }
      setState(() {
        _isPlaying = !_isPlaying;
      });
    } catch (e) {
      print('Error playing audio: $e');
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
          Column(
            children: [
              const SizedBox(height: 250.0),
              const Image(
                image: AssetImage('assets/images/radio_image.png'),
              ),
              const SizedBox(height: 50.0),
              const Text(
                'أزاعة القرآن الكريم',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage('assets/images/Icon metro-next (1).png'),
                      color: Color(0xffB7935F),
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  IconButton(
                    onPressed: _togglePlayback,
                    icon: _isPlaying
                        ? const Icon(Icons.stop, color: Color(0xffB7935F))
                        : const Icon(Icons.play_arrow,
                            color: Color(0xffB7935F)),
                  ),
                  const SizedBox(width: 30.0),
                  IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage('assets/images/Icon metro-next.png'),
                      color: Color(0xffB7935F),
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
