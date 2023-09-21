import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/utils/appsimages.dart';
import 'package:flutter_ecommerce/view/home/page1.dart';
import 'package:flutter_ecommerce/view/home/page2.dart';
import 'package:flutter_ecommerce/widgest/custombutton.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  final PageController _pagecontroller = PageController(
    initialPage: 0,
  );

  int active = 0;

  final List<Widget> _pages = [
    const Page1(),
    const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppsColors.blue,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pagecontroller,
            onPageChanged: (int page) {
              setState(() {
                active = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            bottom: 450,
            left: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List<Widget>.generate(
                _pages.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: InkWell(
                    radius: 30,
                    focusColor: AppsColors.white,
                    onTap: () {
                      _pagecontroller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: active == index
                          ? AppsColors.white
                          : AppsColors.black45,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 720,
            left: 50,
            child: Row(
              children: [
                CustomButton(
                  width: 0.7,
                  height: 50,
                  buttonText: 'Get Started',
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: AppsColors.black,
                  backgroundColor: AppsColors.white,
                  icon: AppsImages.arrow,
                  iconSize: 16,
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      "/mainhomescreen",
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
