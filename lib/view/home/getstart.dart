import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/constants/appstext.dart';
import 'package:flutter_ecommerce/utils/appsimages.dart';
import 'package:flutter_ecommerce/view/home/page1.dart';
import 'package:flutter_ecommerce/view/home/page2.dart';

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
          // Container(
          //   padding: const EdgeInsets.only(
          //     top: 33,
          //     left: 42,
          //     right: 42,
          //   ),
          //   child: const Text(
          //     AppsText.tagline,
          //     style: TextStyle(
          //       fontFamily: 'Manrope',
          //       fontSize: 30,
          //       fontWeight: FontWeight.w700,
          //       color: AppsColors.white,
          //     ),
          //   ),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(
          //         top: MediaQuery.of(context).size.height * 0.43,
          //         left: 130,
          //       ),
          //     ),
          //     Container(
          //       decoration: const BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage(
          //             AppsImages.Smallhome,
          //           ),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //       height: 33.55,
          //       width: 33,
          //     ),
          //   ],
          // ),
          // const SizedBox(
          //   height: 10,
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(
          //         top: MediaQuery.of(context).size.height * 0.61,
          //       ),
          //     ),
          //     Container(
          //       padding: const EdgeInsets.only(
          //         left: 42,
          //       ),
          //       child: const Text(
          //         AppsText.tagline2,
          //         style: TextStyle(
          //           fontFamily: 'Manrope',
          //           fontSize: 18,
          //           fontWeight: FontWeight.w500,
          //           color: AppsColors.grey,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // const SizedBox(
          //   height: 5,
          // ),
          // // Row(
          // //   children: [
          // //     Container(),
          // //   ],
          // // ),
          // // const SizedBox(
          // //   height: 5,
          // // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       //crossAxisAlignment: CrossAxisAlignment.center,
          //       mainAxisSize: MainAxisSize.max,
          //       children: [
          //         Padding(
          //           padding: EdgeInsets.only(
          //             left: MediaQuery.of(context).size.width * 0.95,
          //             top: 370,
          //           ),
          //         ),
          //         Container(
          //           decoration: const BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage(
          //                 AppsImages.getstartimage,
          //               ),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           height: 200,
          //           width: 250,
          //         ),
          //       ],
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
