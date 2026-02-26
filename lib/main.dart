import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

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
