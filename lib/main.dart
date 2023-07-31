import 'package:flutter/material.dart';
import 'package:mobileapp/src/screen/loginscreen.dart';
import 'package:mobileapp/src/screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mobileapp',
      initialRoute: 'splash',
      routes: {
        'splash': (context)=> SplashScreen(),
        'login': (context)=> LoginScreen()
      },
    );
  }
}
