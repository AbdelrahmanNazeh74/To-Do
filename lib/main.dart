import 'package:flutter/material.dart';
import 'package:to_do/layaout/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do',
      routes: {
        HomeScreen.routeName : (context)=> HomeScreen()
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
