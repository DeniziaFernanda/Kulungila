import 'package:flutter/material.dart';
import 'package:kulungila/screens/onboarding/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kulungila',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'OpenSans'
      ),
      home: const SplashScreen(),
    );
  }
}
