import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/utils/appsimages.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 252,
                width: MediaQuery.of(context).size.width * 10,
                color: AppsColors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1,
                            bottom: 52,
                          ),
                          child: const Text(
                            'Hey, Halal',
                            style: TextStyle(
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: AppsColors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.5,
                            bottom: 52,
                          ),
                          child: SvgPicture.asset(
                            AppsSvgIcon.cardIcon,
                          ),
                        ),
                      ],
                    ),

                    // SvgPicture.asset(
                    //   AppsSvgIcon.serchIcon,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
