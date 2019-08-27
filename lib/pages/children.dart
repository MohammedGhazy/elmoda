import 'package:flutter/material.dart';

class Children extends StatefulWidget {
  @override
  _ChildrenState createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text('قسم الأطفال'),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Center(
          child: Text(
        '..سيكون متاح قريباً',
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
      )),
    );
  }
}
