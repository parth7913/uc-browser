import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';
import 'package:uc/screen/browser/provider/browserProvider.dart';
import 'package:uc/utils/share_Pre.dart';

class BrowserPage extends StatefulWidget {
  const BrowserPage({Key? key}) : super(key: key);

  @override
  State<BrowserPage> createState() => _BrowserPageState();
}

class _BrowserPageState extends State<BrowserPage> {
  BrowserProvider? providerTrue;
  BrowserProvider? providerFalse;
  TextEditingController txtsearch = TextEditingController();
  List<String> urls = [];
  bool b1 = true;

  @override
  void initState() {
    super.initState();
  }

  void getBookMark() async {
    urls = (await readBookMark())!;
  }

  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<BrowserProvider>(context, listen: true);
    providerFalse = Provider.of<BrowserProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          providerFalse!.inAppWebViewController!.goBack();
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      IconButton(
                        onPressed: () {
                          providerFalse!.inAppWebViewController!.goForward();
                        },
                        icon: Icon(Icons.arrow_forward),
                      ),
                      IconButton(
                        onPressed: () {
                          providerFalse!.inAppWebViewController!.reload();
                        },
                        icon: Icon(Icons.refresh),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TextField(
                      textInputAction: TextInputAction.search,
                      controller: txtsearch,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            providerFalse!.changeSerch(txtsearch.text);
                            providerFalse!.inAppWebViewController!.loadUrl(
                              urlRequest: URLRequest(
                                url: Uri.parse(
                                    "https://www.google.com/search?q=${txtsearch.text}"),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            setState(() {
                              b1 = !b1;
                            });
                            Uri? uri = await providerFalse!
                                .inAppWebViewController!
                                .getOriginalUrl();
                            urls.add("$uri");
                            addBookMark(urls);
                          },
                          icon: b1
                              ? Icon(
                                  Icons.bookmark_border_outlined,
                                )
                              : Icon(Icons.bookmark),
                          color: Colors.black,
                        ),
                        PopupMenuButton(
                          itemBuilder: (context) {
                            return urls
                                .map(
                                  (e) => PopupMenuItem(
                                    child: Text("$e"),
                                    onTap: () {
                                      providerFalse!.inAppWebViewController!
                                          .loadUrl(
                                              urlRequest: URLRequest(
                                                  url: Uri.parse(e)));
                                    },
                                  ),
                                )
                                .toList();
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            providerTrue!.progress == 1.0
                ? Container()
                : Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                      height: 3,
                      width: double.infinity,
                      child: LinearProgressIndicator(
                        value: providerTrue!.progress,
                      ),
                    ),
                ),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: Uri.parse("https://www.google.com/"),
                ),
                onWebViewCreated: (controller) {
                  providerFalse!.inAppWebViewController = controller;
                },
                onProgressChanged: (controller, progress) {
                  providerFalse!.changeprogress(progress / 100);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
