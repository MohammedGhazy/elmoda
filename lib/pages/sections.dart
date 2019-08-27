import 'package:flutter/material.dart';
import 'package:task/pages/children.dart';
import 'package:task/component/tro_section.dart';
import 'package:task/component/bdal_section.dart';
import 'package:task/component/Tshirt_sec.dart';

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  Widget buildCircle({Tab imageIcon, String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 130.0,
        width: 130.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Tab(icon: imageIcon),
            Text(text),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/pink.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('الأقسام'),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Trousers()));
                    },
                    child: buildCircle(
                      imageIcon: Tab(
                        icon: Image.asset('assets/images/icons/troIcon.jpg'),
                      ),
                      text: 'بناطيل',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Shirt()));
                    },
                    child: buildCircle(
                      imageIcon: Tab(
                        icon: Image.asset('assets/images/icons/kamesIcon.png'),
                      ),
                      text: 'تيشرتات',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Suit()));
                    },
                    child: buildCircle(
                      imageIcon: Tab(
                        icon: Image.asset('assets/images/icons/bdalIcon.jpg'),
                      ),
                      text: 'بدل',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Children()));
                    },
                    child: buildCircle(
                      imageIcon: Tab(
                        icon: Image.asset('assets/images/icons/childIcon.png'),
                      ),
                      text: 'أطفال',
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
