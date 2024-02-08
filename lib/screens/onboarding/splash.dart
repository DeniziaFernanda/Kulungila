import 'package:flutter/material.dart';
import 'package:kulungila/screens/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(const Duration(seconds: 5), () {});

    // ignore: use_build_context_synchronously
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => const Onboarding()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
            width: 400,
            height: 400,
            child: Image.asset('assets/icon/kulungila.png')),
      ),
    );
  }
}
