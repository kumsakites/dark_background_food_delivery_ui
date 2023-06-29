import 'package:darkfood_ui/models/product_models.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_screen.dart';

class InfoOderPage extends StatefulWidget {
  const InfoOderPage({super.key});

  @override
  State<InfoOderPage> createState() => _InfoOderPageState();
}

class _InfoOderPageState extends State<InfoOderPage> {
  int minutes = 148;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25, left: 15, right: 15),
          child: Column(
            children: [
              Row(
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
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Order info',
                    style: GoogleFonts.notoSerif(
                        fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Order number',
                        style: GoogleFonts.notoSerif(
                          fontSize: 18,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        '456',
                        style: GoogleFonts.notoSerif(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xFF1DE33),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              minutes.toString(),
                              style: GoogleFonts.notoSerif(
                                  color: Colors.white, fontSize: 25),
                            ),
                          ],
                        ),
                        Slider(
                          value: minutes.toDouble(),
                          min: 120,
                          max: 456,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue) {
                            setState(() {
                              minutes = newValue.round();
                            });
                          },
                        ),
                        Text(
                          'Preparing',
                          style: GoogleFonts.notoSerif(
                              fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Image.asset('images/burgerb.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => CatalogProductCard(
                      //             index: Product.product.length,
                      //           )),
                      // );
                    },
                    child: Text('Add to the cart')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
