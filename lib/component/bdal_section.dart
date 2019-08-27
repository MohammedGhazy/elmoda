import 'package:flutter/material.dart';
import 'package:task/pages/pageDetail_suitSec.dart';

class Suit extends StatefulWidget {
  @override
  _SuitState createState() => _SuitState();
}

class _SuitState extends State<Suit> {
  var suitSection = [
    {
      'picture': 'assets/images/recentPro/bdla1.jpg',
      'type': 'بدله رجالي',
      'prise': '1000ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 36-38'
    },
    {
      'picture': 'assets/images/recentPro/bdla2.jpg',
      'type': 'بدله',
      'prise': '1200ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 40-44'
    },
    {
      'picture': 'assets/images/sections/suit/1.jfif',
      'type': 'بدله مقاس 36 رجالي',
      'prise': '900ج',
      'descreption': 'بدله عاليه الجوده..'
    },
    {
      'picture': 'assets/images/sections/suit/2.jfif',
      'type': 'بدله ',
      'prise': '1000ج',
      'descreption': 'بدله عالي الجوده..المقاسات المتاحه 40-43'
    },
    {
      'picture': 'assets/images/sections/suit/3.jfif',
      'type': 'بدله ',
      'prise': '980ج',
      'descreption': 'بدله عالي الجوده..المقاسات المتاحه 40-43'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('قسم البناطيل'),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: ListView.builder(
          itemCount: suitSection.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: SingleProSuitSec(
                proPictureSuitSec: suitSection[index]['picture'],
                proPriseSuitSec: suitSection[index]['prise'],
                proTypeSuitSec: suitSection[index]['type'],
                proDescriptionSuitSec: suitSection[index]['descreption'],
              ),
            );
          }),
    );
  }
}

class SingleProSuitSec extends StatelessWidget {
  final proPictureSuitSec;
  final proDescriptionSuitSec;
  final proTypeSuitSec;
  final proPriseSuitSec;

  SingleProSuitSec({
    this.proPictureSuitSec,
    this.proDescriptionSuitSec,
    this.proTypeSuitSec,
    this.proPriseSuitSec,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageDetailSuitSec(
                      proDetailPicSuitSec: proPictureSuitSec,
                      proDetailPriseSuitSec: proPriseSuitSec,
                      proDetailTypeSuitSec: proTypeSuitSec,
                      proDetailDescriptionSuitSec: proDescriptionSuitSec,
                    )));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    proPictureSuitSec,
                    height: 90,
                    width: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          proTypeSuitSec,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          proPriseSuitSec,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
