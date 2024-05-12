import 'package:flutter/material.dart';
import 'package:learn/pages/NinjaCard.dart';
import 'package:learn/pages/choose_location.dart';
import 'package:learn/pages/home.dart';
import 'package:learn/pages/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
        '/profile': (context) => const NinjaCard(),
      },
    );
  }
}
