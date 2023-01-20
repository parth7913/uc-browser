import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uc/screen/Home/view/HomePage.dart';
import 'package:uc/screen/browser/view/browserPage.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List bNb = [
    BrowserPage(),
    HomePage(),
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: bNb[i],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              i = index;
            });
          },
          currentIndex: i,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
          ],
        ),
      ),
    );
  }
}
