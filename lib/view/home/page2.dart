import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/constants/appstext.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 33,
            left: 42,
            right: 42,
          ),
          child: const Text(
            AppsText.tagline2,
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: AppsColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
