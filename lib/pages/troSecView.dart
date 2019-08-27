import 'package:flutter/material.dart';
import 'package:task/pages/pageDetail_troSec.dart';

class TroSecView extends StatefulWidget {
  @override
  _TroSecViewState createState() => _TroSecViewState();
}

class _TroSecViewState extends State<TroSecView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 100,
              child: PageDetailTroSec()),
        ],
      ),
    );
  }
}
