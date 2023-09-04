import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/constants/appstext.dart';
import 'package:flutter_ecommerce/utils/appsimages.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 33,
              left: 42,
              right: 42,
            ),
            child: const Text(
              AppsText.tagline,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: AppsColors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.70,
                      top: 159,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          AppsImages.smallhome,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 33,
                    width: 33.55,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  top: 540,
                ),
              ),
              const SizedBox(
                height: 100,
                width: 300,
                child: Text(
                  AppsText.tagline2,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppsColors.grey,
                  ),
                ),
              ),
            ],
          ),
          // Row(
          //   //mainAxisAlignment: MainAxisAlignment.end,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Container(
          //       decoration: const BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage(
          //             AppsImages.slidesmall,
          //           ),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
