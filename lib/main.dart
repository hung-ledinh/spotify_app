import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_app/gen/assets.gen.dart';
import 'package:spotify_app/home/home_page.dart';

import 'get_started/get_started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Spotify'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  const GetStartedPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Image.asset(Assets.images.spotifyLogo.path));
  }
}
