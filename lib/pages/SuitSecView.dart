import 'package:flutter/material.dart';
import 'package:task/pages/pageDetail_suitSec.dart';

class SuitSecView extends StatefulWidget {
  @override
  _SuitSecViewState createState() => _SuitSecViewState();
}

class _SuitSecViewState extends State<SuitSecView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 100,
              child: PageDetailSuitSec()),
        ],
      ),
    );
  }
}
