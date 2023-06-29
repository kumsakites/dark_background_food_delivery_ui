import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/items_widget.dart';
import 'home_navbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xFFEF330),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            CupertinoIcons.person,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFEF330),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            CupertinoIcons.bag,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        'Take away from',
                        style: GoogleFonts.notoSerif(color: Colors.white54),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '71 Totthenam Court Rd',
                        style: GoogleFonts.notoSerif(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Icon(
                      CupertinoIcons.pencil,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TabBar(
                  isScrollable: true,
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  indicator: BoxDecoration(),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: 'New'),
                    Tab(text: 'Burger'),
                    Tab(text: 'Pizza'),
                    Tab(text: 'Drink'),
                    Tab(text: 'Shusi'),
                    Tab(text: 'EthioBurger'),
                  ],
                ),
                Flexible(
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
        
      ),
    );
  }
}
