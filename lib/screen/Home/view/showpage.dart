import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:uc/screen/Home/provider/HomeProvider4.dart';

class SHOW_page extends StatefulWidget {
  const SHOW_page({Key? key}) : super(key: key);

  @override
  State<SHOW_page> createState() => _SHOW_pageState();
}

class _SHOW_pageState extends State<SHOW_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(
                "${Provider.of<Homeprovider>(context, listen: true).imageList[Provider.of<Homeprovider>(context, listen: true).index!].uri}"),
          ),
          onWebViewCreated: (controller) {},
        ),
      ),
    );
  }
}
