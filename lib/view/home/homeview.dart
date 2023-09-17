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
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width * 0.5,
          MediaQuery.of(context).size.width * 0.5,
        ),
        child: AppBar(
          leading: Container(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: const Text(
              'Hey, Nabeel',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 27,
              ),
            ),
          ),
          leadingWidth: 200,
          backgroundColor: AppsColors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 60,
                  bottom: 9,
                ),
                height: 100,
                width: 100,
                child: InkWell(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppsSvgIcon.cardIcon,
                    ),
                  ),
                ),
              ),
            ],
          ),
          flexibleSpace: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 90,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.clear_all,
                        ),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppsSvgIcon.serchIcon,
                        ),
                      ),
                      hintText: 'Search...',
                      hoverColor: const Color(153075),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          60.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
