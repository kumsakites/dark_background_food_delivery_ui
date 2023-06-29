import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Pages/InfoOderPage.dart';
import 'Pages/home_page.dart';
import 'Pages/single_item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'SingleItemPage': (context) => SingleItemPage(),
        'InfoOderPage': (context) => InfoOderPage(),

        // Navigator.pushNamed(context, 'SingleItemPage');
      },
    );
  }
}
