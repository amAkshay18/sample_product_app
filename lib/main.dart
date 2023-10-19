import 'package:fake_store_api/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        useMaterial3: true,
        fontFamily: GoogleFonts.averiaSansLibre().fontFamily,
      ),
      home: const SplashScreen(),
    );
  }
}
