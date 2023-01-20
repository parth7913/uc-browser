import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uc/screen/Home/provider/HomeProvider4.dart';
import 'package:uc/screen/Home/view/HomePage.dart';
import 'package:uc/screen/Home/view/showpage.dart';
import 'package:uc/screen/bottomNavigation.dart';
import 'package:uc/screen/browser/provider/browserProvider.dart';
import 'package:uc/screen/browser/view/browserPage.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => BrowserProvider(),),
      ChangeNotifierProvider(create: (context) => Homeprovider(),)
    ],builder:(context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Bottom(),
          'B': (context) => BrowserPage(),
          'H': (context) => HomePage(),
          'S': (context) => SHOW_page(),
        },
      ),
    ),
  );
}
