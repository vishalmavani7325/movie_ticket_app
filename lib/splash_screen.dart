import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_ticket_app/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LogIn(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Container(
          child: const Text(
            'Movie Ticket',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
      ),
    );
  }
}
