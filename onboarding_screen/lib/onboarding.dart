import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/main.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome!',
          body: 'This is the first page!',
          image: Image.asset('images/page1.png'),
        ),
        PageViewModel(
          title: 'Welcome!',
          body: 'This is the first page!',
          image: Image.asset('images/page2.png'),
        ),
        PageViewModel(
          title: 'Welcome!',
          body: 'This is the first page!',
          image: Image.asset('images/page3.png'),
        ),
      ],
      done: const Text('Done'),
      onDone: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MyPage(),
          ),
        );
      },
      next: const Icon(Icons.arrow_forward),
    );
  }
}
