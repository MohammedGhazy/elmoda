import 'package:flutter/material.dart';
import 'package:task/component/zara_list.bulder.dart';

class ZaraViewPage extends StatefulWidget {
  @override
  _ZaraViewPageState createState() => _ZaraViewPageState();
}

class _ZaraViewPageState extends State<ZaraViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 200, child: Zara()),
        ],
      ),
    );
  }
}
