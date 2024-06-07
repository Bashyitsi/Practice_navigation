import 'package:flutter/material.dart';
import 'package:lets_route/pages/first_page.dart';
import 'package:lets_route/pages/home_page.dart';
import 'package:lets_route/pages/details_page.dart'; // Import the details page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
        primaryColor: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF004B5C),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00A89B),
            foregroundColor: Colors.white,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
      ),
      initialRoute: '/firstpage',
      routes: {
        '/firstpage': (context) => const FirstPage(),
        '/homepage': (context) => const HomePage(),
        '/details': (context) =>
            const DetailsPage(), // Add the details page route
      },
    );
  }
}
