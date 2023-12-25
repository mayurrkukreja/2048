import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_games/animated_splash_screen/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/board_adapter.dart';

import 'game.dart';

void main() async {
  //Allow only portrait mode on Android & iOS
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(MobileAds.instance.initialize());
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  //Make sure Hive is initialized first and only after register the adapter.
  await Hive.initFlutter();
  Hive.registerAdapter(BoardAdapter());
  runApp(ProviderScope(
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '2048',
        home: SplashScreen(),
        routes: {'/game': (context) => Game()}),
  ));
}
