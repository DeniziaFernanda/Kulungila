import 'package:flutter/material.dart';

class Escrita extends StatefulWidget {
  const Escrita({Key? key}) : super(key: key);
  @override
  State<Escrita> createState() => _EscritaState();
}

class _EscritaState extends State<Escrita> {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: Center(
        child: Text("Escrita"),
      ),
    ));
  }
}