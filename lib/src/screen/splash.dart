import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigationSplash();
  }

  Future<dynamic> _navigationSplash ()async{
    Future.delayed(Duration(milliseconds: 3000), (){
      Navigator.pushNamed(context, 'login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.lock_person),
            Text('Login')
          ],
        ),
      ),
    );
  }
}
