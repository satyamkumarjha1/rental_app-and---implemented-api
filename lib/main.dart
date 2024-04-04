import 'package:flutter/material.dart';
import 'package:rental_app/screens/button.dart';
import 'package:rental_app/screens/home.dart';
import 'package:rental_app/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: false,

      initialRoute: "/button",
      routes: {
        "/home": (context) => HomePage(),
        "/button": (context) => ButtonPage(),
        "/profile": (context) => ProfilePage(),
      },
    );
  }
}
