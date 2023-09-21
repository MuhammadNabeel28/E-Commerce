import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/constants/apps_color.dart';
import 'package:flutter_ecommerce/utils/appsimages.dart';
import 'package:flutter_ecommerce/utils/item_class.dart';
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
          flexibleSpace: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 130,
                  //left: 20,
                ),
                height: 50,
                width: 340,
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
                    hoverColor: const Color(0x000255f3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        28.5,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                        //right: ,
                        left: 5,

                        //bottom: 11,
                      ),
                      height: 120,
                      width: 150,
                      child: const Text(
                        'DELIVERY TO Green Way 3000, Sylhet',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppsColors.beigh,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 150,
                        top: 5,
                      ),
                      child: const Text(
                        'Green Way',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppsColors.beigh,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: ListItem.Item.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              ListItem.Item[index]['Image'],
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Text(
                          ListItem.Item[index]['ProductName'],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
