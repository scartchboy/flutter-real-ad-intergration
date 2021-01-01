import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(realap);

class realap extends StatelessWidget {
  const realap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    BannerAd mybannerAd;

    BannerAd buildBannerad() {
      return BannerAd(
          adUnitId: "real ad unit id",
          size: AdSize.banner,
          listener: (MobileAdEvent event) {
            if (event == MobileAdEvent.loaded) {
              mybannerAd..show();
            }
            print(event);
          });
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("tuss"),
          titleSpacing: 2.0,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: null,
            child: Text("banner ad"),
          ),
        ),
      ),
    );
  }
}
