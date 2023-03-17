import 'package:flutter/material.dart';
import 'package:play_store/HomeScreen/provider/home_Provider.dart';
import 'package:provider/provider.dart';

import '../../Categories/view/categoryScreen.dart';
import '../../tab1/view/For You.dart';
import '../../tab2/view/TopChartScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // TabController _tabController = TabController(length: 4, initialIndex: 0);
  HomeProvider? homeProviderT;
  HomeProvider? homeProviderF;

  @override
  Widget build(BuildContext context) {
    homeProviderT = Provider.of<HomeProvider>(context, listen: true);
    homeProviderF = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            height: 80,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.white,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade50,
                  blurRadius: 0,
                  offset: Offset(0.0, 0.75),
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.black54,
                  ),
                  Text(
                    "Search for apps & games",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                  ),
                  Icon(
                    Icons.mic,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.label,
              // controller:_tabController,
              tabs: [
                Tab(
                  text: 'For you',
                ),
                Tab(
                  text: 'Top Charts',
                ),
                Tab(
                  text: 'Categories',
                ),
              ]),
        ),
        body: Column(
          children: [
            Container(
              height: 670,
              width: double.infinity,
              child: TabBarView(
                children: [
                  // homeProviderT!.navigationClick ? Foryou() : TopChartScreen(),
                  Foryou(),
                  TopChartScreen(),
                  CategoryScreen(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey.shade600,
          backgroundColor: Colors.white,
          currentIndex: homeProviderT!.i,
          onTap: (value) {
            homeProviderT!.navigationPosition(value);
            homeProviderT!.navigationOnClick();
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.sports_esports,
                ),
                label: "Games",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.apps,
                ),
                label: "Apps",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.theaters,
                ),
                label: "Movies & Tv",
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book_outlined,
                ),
                label: "Books",
                backgroundColor: Colors.white),
          ],
        ),
      ),
    ));
  }
}
