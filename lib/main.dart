import 'package:flutter/material.dart';
import 'package:travelapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'RedditSans',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePages(),
    );
  }
}
