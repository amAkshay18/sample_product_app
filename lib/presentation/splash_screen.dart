import 'package:fake_store_api/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      );
    });

    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.transparent,
          child: ClipOval(
            child: Image.asset(
              'assets/splashimage.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
