import 'package:fl_music_player/src/models/audioplayer_model.dart';
import 'package:flutter/material.dart';

import 'package:fl_music_player/src/theme/theme.dart';

import 'package:fl_music_player/src/pages/music_player_pages.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AudioPlayerModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        theme: miTema,
        home: const MusicPlayerPage()
      ),
    );
  }
}