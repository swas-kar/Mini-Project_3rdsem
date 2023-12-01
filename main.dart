import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 199, 73, 115),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const DiaryApp());
}

class DiaryApp extends StatelessWidget {
  const DiaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 225, 176, 192),
      ),
      home: const HomePage(),
    );
  }
}