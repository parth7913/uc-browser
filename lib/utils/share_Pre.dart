import 'package:shared_preferences/shared_preferences.dart';

void addBookMark(List<String> urls) async {
  SharedPreferences shc = await SharedPreferences.getInstance();
  shc.setStringList("BookMark", urls);
}

Future<List<String>?> readBookMark() async {
  SharedPreferences shc = await SharedPreferences.getInstance();
  List<String>?urls = shc.getStringList("BookMark");
  return urls;
}
