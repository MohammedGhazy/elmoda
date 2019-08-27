import 'package:flutter/material.dart';
import 'package:task/component/poloList.bulder.dart';

class PoloViewPage extends StatefulWidget {
  @override
  _PoloViewPageState createState() => _PoloViewPageState();
}

class _PoloViewPageState extends State<PoloViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 200, child: Polo()),
        ],
      ),
    );
  }
}
