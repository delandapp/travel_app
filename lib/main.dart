import 'package:flutter/material.dart';
import 'package:travelapp/book_flight_page.dart';
import 'package:travelapp/landing_page.dart';
import 'package:travelapp/search_flight_page.dart';

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
        scaffoldBackgroundColor: const Color.fromRGBO(64, 147, 206, 100),
        primarySwatch: Colors.blue
      ),
      initialRoute: '/landingpage',
      routes: {
        LandingPage.nameRoute:(context) => LandingPage(),
        BookFlightPage.nameRoute:(context) => BookFlightPage(),
        SearchFlightPage.nameRoute:(context) => SearchFlightPage(),
      },
      home: LandingPage(),
    );
  }
}
