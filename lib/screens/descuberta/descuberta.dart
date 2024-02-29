import 'package:flutter/material.dart';

class Descuberta extends StatefulWidget {
  const Descuberta({Key? key}) : super(key: key);
  @override
  State<Descuberta> createState() => _DescubertaState();
}

class _DescubertaState extends State<Descuberta> {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: Center(
        child: Text("Descuberta"),
      ),
    ));
  }
}