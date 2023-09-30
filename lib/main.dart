import 'package:bottom_navigation/bottom_navigation/controller/bottom_navigation_controller.dart';
import 'package:bottom_navigation/bottom_navigation/view/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavigationScreenProvider(),
      child: const MaterialApp(
        home: BottomNavigationScreen(),
      ),
    );
  }
}
