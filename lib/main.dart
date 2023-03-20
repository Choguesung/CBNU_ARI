import 'package:cbnuari/template/navigation_template.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',

      routes: {
        '/': (context) => HomeScreen(),
        '/example': (context) => ExampleRouteScreen(),
      },
    );
  }
}

