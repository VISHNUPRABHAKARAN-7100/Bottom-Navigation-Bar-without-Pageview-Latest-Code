import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/bottom_navigation_controller.dart';
import '../view/bottom_navigation.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Page 1 build');
    return Center(
      child: Text(
        "Page Number 1",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Page 2 build');

    return Center(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NextScreen(),
              ),
            );
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Provider.of<BottomNavigationScreenProvider>(context, listen: false)
                .setPageIndex(3);
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const BottomNavigationScreen(),
              ),
              (route) => false,
            );
          },
          child: const Text('Go to Profile'),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Page 3 build');

    return Center(
      child: Text(
        "Page Number 3",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('Page 4 build');
    return Center(
      child: Text(
        "Page Number 4",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
