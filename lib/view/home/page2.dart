import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/constants/appstext.dart';
import 'package:flutter_ecommerce/utils/appsimages.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
              AppsText.tagline4,
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
                  AppsText.tagline3,
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
        ],
      ),
    );
  }
}
