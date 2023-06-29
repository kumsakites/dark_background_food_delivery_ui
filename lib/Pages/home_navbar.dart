import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF232227),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.mail,
            color: Colors.white,
            size: 26,
          ),
          Icon(
            Icons.favorite_outlined,
            color: Colors.white,
            size: 26,
          ),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Color(0xFFEFB330),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 26,
            ),
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 26,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 26,
          ),
        ],
      ),
    );
  }
}
