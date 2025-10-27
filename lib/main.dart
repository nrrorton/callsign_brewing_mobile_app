import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/beer_page.dart';
import 'pages/food_page.dart';
import 'pages/staff_page.dart';
import 'pages/merch_page.dart';

void main() {
  runApp(const CallsignApp());
}

class CallsignApp extends StatelessWidget {
  const CallsignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Callsign Brewing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      // Define named routes for navigation
      routes: {
        '/': (context) => const HomePage(),
        '/beer': (context) => const BeerPage(),
        '/food': (context) => const FoodPage(),
        '/staff': (context) => const StaffPage(),
        '/merchandise': (context) => const MerchPage(),
      },
      initialRoute: '/',
    );
  }
}



