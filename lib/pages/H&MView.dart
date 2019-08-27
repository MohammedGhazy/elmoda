import 'package:flutter/material.dart';
import 'package:task/component/h&m_list.bulder.dart';

class HandMViewPage extends StatefulWidget {
  @override
  _HandMViewPageState createState() => _HandMViewPageState();
}

class _HandMViewPageState extends State<HandMViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 200, child: HandM()),
        ],
      ),
    );
  }
}
