import 'package:flutter/material.dart';
import 'package:uc/screen/Home/modal/HomeModel.dart';

class Homeprovider extends ChangeNotifier {
  int? index;
  void ChangeIndex(ind) {
    index = ind;
    notifyListeners();
  }
  List<HomeModel> imageList = [
    HomeModel(
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/YouTube_social_red_square_%282017%29.svg/2048px-YouTube_social_red_square_%282017%29.svg.png",
        name: "Youtube",
        uri: "https://www.youtube.com"),
    HomeModel(
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png",
        name: "Amazon",
        uri: "https://www.amazon.in/?&ext_vrnc=hi&tag=googhydrabk1-21&ref=pd_sl_5szpgfto9i_e&adgrpid=58075519359&hvpone=&hvptwo=&hvadid=486462756371&hvpos=&hvnetw=g&hvrand=8725968498181400949&hvqmt=e&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9062189&hvtargid=kwd-64107830&hydadcr=14452_2154371&gclid=EAIaIQobChMI9PL0j8XQ_AIVBw4rCh1f2QZiEAAYASAAEgKzQPD_BwE"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPwGA7WIR2mFJp7S9wJYMNNhyothsVxeiHPth7b-yy_uy6Pvmnpe17954jxdzJqATnITY&usqp=CAU",
        name: "Flipkart",
        uri: "https://www.flipkart.com/"),
    HomeModel(
        image:
            "https://helios-i.mashable.com/imagery/articles/04EZglaVzAW19V6FIiDD3TA/hero-image.fill.size_1200x1200.v1623363034.jpg",
        name: "Playstore",
        uri: "https://play.google.com/store/apps/dev?id=7199385734845309914&gclid=CjwKCAiAzp6eBhByEiwA_gGq5EC5HWoXYmvr8HBEAjbHNxFZmZhC75IQTtmOrreehHcrL4T5phkT4BoCt_IQAvD_BwE"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoIyZSjsuZ3jPl_oAqDvVXLmeDXJRQbUz4-Q&usqp=CAU",
        name: "Twitter",
        uri: "https://twitter.com/i/flow/login?input_flow_data=%7B%22requested_variant%22%3A%22eyJsYW5nIjoiZW4ifQ%3D%3D%22%7D"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3JkYTPaEL2SsCe6MenDZRIlDBiLgJxqQmjw&usqp=CAU",
        name: "Vidmate",
        uri: "https://www.vidmateapp.com/?pc"),
    HomeModel(
        image:
            "https://w7.pngwing.com/pngs/923/640/png-transparent-shopclues-social-icons-circular-color-icon-thumbnail.png",
        name: "Shopclues",
        uri: "https://bazaar.shopclues.com/?mcid=ps&utm_source=google&utm_medium=cpc&utm_campaign=CLUE_7018_adyogi_Brand-Search_Engage&gclid=CjwKCAiAzp6eBhByEiwA_gGq5L3qETEQXWuSRYh87-0eCn52jNhCvrVP6YQxad8CZICDUqV7GdP_yBoCOaIQAvD_BwE"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrvgF6pxRp1NxRcNMHIazBcOrbqHPG2VaYkQ&usqp=CAU",
        name: "Facebook",
        uri: "https://www.facebook.com/"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReeHXQi_Z8VcqpGCP3-Kx4IW5WX0XzCGtXCcU1I5IMM5T-ibf4rvCfDu-3158BNxwvCf4&usqp=CAU",
        name: "Instagram",
        uri: "https://www.instagram.com/accounts/login/"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAKgTavuHlle5BlG_wJ0QHH27YmnAW20Ib6A&usqp=CAU",
        name: "Snapchat",
        uri: "https://www.snapchat.com/"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThu4w6zDN0UD9MIMuSAIaFNSaG53aoIk0r-OXh0C7uNSbhzAl4d4qpTN5JPRIYYNVwB64&usqp=CAU",
        name: "Netflix",
        uri: "https://www.netflix.com/in/"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwzL8emyXaXVy982uWN490MrsTVXI5zXKMTA&usqp=CAU",
        name: "Hotstar",
        uri: "https://www.hotstar.com/in"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLgdcw5weBR1AHuz4jhWYDKDStYxxaHNfb8A&usqp=CAU",
        name: "Sony Sub",
        uri: "https://www.sonyliv.com/live-tv/sony-sab-1000009248"),
    HomeModel(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8R8PhGeOKTck7ySQTMzw46Kjpf6EjDVmv3Q&usqp=CAU",
        name: "Sony Sub",
        uri: "https://www.sonyliv.com/live-tv/sony-sab-1000009248"),
  ];
}
