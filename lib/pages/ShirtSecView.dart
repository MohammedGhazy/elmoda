import 'package:flutter/material.dart';
import 'package:task/pages/pageDetail_shirtSec.dart';

class ShirtSecView extends StatefulWidget {
  @override
  _ShirtSecViewState createState() => _ShirtSecViewState();
}

class _ShirtSecViewState extends State<ShirtSecView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 100,
              child: PageDetailShirtSec()),
        ],
      ),
    );
  }
}
