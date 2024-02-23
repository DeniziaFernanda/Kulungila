import 'package:flutter/material.dart';
import 'package:kulungila/screens/login/login.dart';
import 'package:kulungila/utils/colors.dart';
import 'onboarding_content.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
      Expanded(
        child: PageView.builder(
            controller: _controller,
            itemCount: contents.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (_, i) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    contents[i].image,
                  ),
                  //SizedBox(height: 1.0),
                  Column(
                    children: [
                      Text(
                        contents[i].description1,
                        style: const TextStyle(
                            color: Color(0xFF5F5B5B),
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        contents[i].description2,
                        style: const TextStyle(
                            color: Color(0xFF5F5B5B),
                            fontSize: 16.0),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              );
            }),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              contents.length, (index) => buildDot(index, context))),
      Container(
          height: 50.0,
          margin: const EdgeInsets.all(40.0),
          width: double.infinity,
          //color: Color(0xFFF58008),
          child: ElevatedButton(
            onPressed: () {
              if (currentIndex == contents.length - 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const Login(),
                    ));
              }
              _controller.nextPage(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.bounceIn);
            },
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(corPrincipal),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ))),
            child: const Text('Começar',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                )),
          ))
    ]));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(
        right: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: corPrincipal,
      ),
    );
  }
}
