import 'package:flutter/material.dart';
import 'package:flutter_tes/screens/HomeScreen.dart';
import 'package:flutter_tes/screens/IntroScreen.dart';
import 'package:flutter_tes/screens/LoginScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FoodAppUI());
}

class FoodAppUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => IntroScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
