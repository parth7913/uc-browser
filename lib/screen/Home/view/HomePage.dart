import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uc/screen/Home/provider/HomeProvider4.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Homeprovider? providerTrue;
  Homeprovider? providerFalse;

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<Homeprovider>(context, listen: true);
    providerFalse = Provider.of<Homeprovider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Wikipedia",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                "Ott & Social Media Plateforms",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.black,
                    fontSize: 21),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: providerFalse!.imageList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        providerFalse!.ChangeIndex(index);
                        Navigator.pushNamed(context, 'S');
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        color: Colors.white,
                        child: Image.network(
                          "${providerTrue!.imageList[index].image}",
                        ),
                      ),
                    ),
                    Text("${providerFalse!.imageList[index].name}")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
