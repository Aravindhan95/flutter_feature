import 'package:flutter/material.dart';
import 'package:flutter_feature/forth_screen.dart';
import 'package:flutter_feature/home_screen.dart';

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
      // 🚨 REMOVE initialRoute completely
      onGenerateInitialRoutes: (String initialRoute) {
        // 👇 Flutter will honor native route
        return [_buildRoute(initialRoute)];
      },

      onGenerateRoute: (settings) => _buildRoute(settings.name),
    );
  }

  static Route _buildRoute(String? name) {
    switch (name) {
      case '/second':
        return MaterialPageRoute(builder: (_) => const SecondScreen());

      case '/third':
        return MaterialPageRoute(builder: (_) => const ThirdScreen());

      case '/fourth':
        return MaterialPageRoute(builder: (_) => const ForthScreen());

      case '/':
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
    }
  }
}
