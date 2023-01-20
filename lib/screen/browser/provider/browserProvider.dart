import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BrowserProvider extends ChangeNotifier {
  String searchData = "https://www.google.com/";
  InAppWebViewController? inAppWebViewController;
  double progress = 0.0;

  void changeSerch(String data) {
    searchData = data;
    notifyListeners();
  }

  void changeprogress(index){
    progress=index;
    notifyListeners();
  }
}
