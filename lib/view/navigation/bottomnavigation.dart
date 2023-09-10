import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/utils/appsimages.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount_ = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Widget> bottomPage = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          bottomPage.length,
          (index) => bottomPage[index],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomPage.length <= maxCount_)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: AppsColors.white,
              showLabel: false,
              notchColor: AppsColors.black,
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: [
                BottomBarItem(
                  inActiveItem: const Icon(
                    Icons.home_filled,
                    color: Colors.blueGrey,
                  ),
                  activeItem: activeItem,
                ),
              ],
            )
          : null,
    );
  }
}
