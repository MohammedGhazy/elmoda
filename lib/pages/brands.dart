import 'package:flutter/material.dart';
import 'package:task/pages/zaraView.dart';
import 'package:task/pages/H&MView.dart';
import 'package:task/pages/poloView.dart';

class Brands extends StatefulWidget {
  @override
  _BrandsState createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  Widget buildItem({Tab imageIcon, String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(text),
          Tab(icon: imageIcon),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Text("الماركات"),
          bottom: TabBar(
            tabs: [Text('ZARA'), Text('H&M'), Text('POLO')],
          ),
        ),
        body: TabBarView(children: [
          ZaraViewPage(),
          HandMViewPage(),
          PoloViewPage(),
        ]),
      ),
    );
  }
}
