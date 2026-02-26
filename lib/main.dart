import 'package:flutter/material.dart';

void main() {
  runApp(const MyFlutterModule());
}

class MyFlutterModule extends StatelessWidget {
  const MyFlutterModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
      },
    );
  }
}
