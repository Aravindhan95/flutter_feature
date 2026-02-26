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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            return MaterialPageRoute(
              builder: (_) => const SecondScreen(),
            );

          case '/third':
            return MaterialPageRoute(
              builder: (_) => const ThirdScreen(),
            );

          case '/':
          default:
            return MaterialPageRoute(
              builder: (_) => const HomeScreen(),
            );
        }
      },
    );
  }
}
