import 'package:flutter/material.dart';
import 'package:flutter_application_1/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Recipe App',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: const Color.fromARGB(255, 212, 187, 252), // app bar color
          secondary: Colors.amber, // widget color
          surface: Colors.white, // background color
          onPrimary: Colors.white, // text color on app bar
          onSecondary: Colors.black, // text color on widget
        ),
      ),
      routerConfig: router,
    );
  }
}