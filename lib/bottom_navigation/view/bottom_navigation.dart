import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/bottom_navigation_controller.dart';
import '../screens/temp_screens.dart';

class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final pages = [
      const Page1(),
      const Page2(),
      const Page3(),
      const Page4(),
    ];

    return Consumer<BottomNavigationScreenProvider>(
      builder: (context, snapshot, child) => Scaffold(
        body: pages[snapshot.pageIndex],
        bottomNavigationBar: buildMyNavBar(context, snapshot),
      ),
    );
  }

  Container buildMyNavBar(
      BuildContext context, BottomNavigationScreenProvider pageIndexProvider) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              pageIndexProvider.setPageIndex(0);
            },
            icon: pageIndexProvider.pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              pageIndexProvider.setPageIndex(1);
            },
            icon: pageIndexProvider.pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              pageIndexProvider.setPageIndex(2);
            },
            icon: pageIndexProvider.pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              pageIndexProvider.setPageIndex(3);
            },
            icon: pageIndexProvider.pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
