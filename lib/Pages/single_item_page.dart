import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        CupertinoIcons.cart_fill,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    'images/califor.png',
                    height: MediaQuery.of(context).size.height / 1.7,
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Ink(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 67, 9, 161),
                            ),
                            child: Text(
                              'New',
                              style: GoogleFonts.notoSerif(
                                  fontSize: 25.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Big double cheese burger',
                    style: GoogleFonts.notoSerif(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Marble beet, cheddar cheese,jalappen pepper, picked cucumber, lettuce, red onion, BBQ source.',
                    style: GoogleFonts.notoSerif(
                      color: Colors.white54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '\$8.50',
                      style: GoogleFonts.notoSerif(
                          color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.line_weight,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '\$320g',
                      style: GoogleFonts.notoSerif(
                          color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'InfoOderPage');
                  },
                  child: Ink(
                    padding: EdgeInsets.symmetric(
                      horizontal: 80,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 55, 12, 224),
                    ),
                    child: Text(
                      'Taste it fo \$8.50',
                      style: GoogleFonts.notoSerif(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
