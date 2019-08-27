import 'package:flutter/material.dart';
import 'package:task/pages/pageDetail_troSec.dart';

class Trousers extends StatefulWidget {
  @override
  _TrousersState createState() => _TrousersState();
}

class _TrousersState extends State<Trousers> {
  var troSection = [
    {
      'picture': 'assets/images/sections/tro/3.jfif',
      'type': 'بنطلون',
      'prise': '300ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
    {
      'picture': 'assets/images/sections/tro/1.jfif',
      'type': 'بنطلون رجالي',
      'prise': '1200ج',
      'descreption': 'بنطلون رجالي عالي الجوده..المقاسات المتاحه 40-44'
    },
    {
      'picture': 'assets/images/sections/tro/2.jfif',
      'type': 'بنطلون ماركه zara',
      'prise': '300ج',
      'descreption': 'بنطلون عالي الجوده..'
    },
    {
      'picture': 'assets/images/sections/tro/3.jfif',
      'type': 'ماركه H&M بنطلون رجالي',
      'prise': '400ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
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
          itemCount: troSection.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: SingleProTroSec(
                proPictureTroSec: troSection[index]['picture'],
                proPriseTroSec: troSection[index]['prise'],
                proTypeTroSec: troSection[index]['type'],
                proDescriptionTroSec: troSection[index]['descreption'],
              ),
            );
          }),
    );
  }
}

class SingleProTroSec extends StatelessWidget {
  final proPictureTroSec;
  final proDescriptionTroSec;
  final proTypeTroSec;
  final proPriseTroSec;

  SingleProTroSec({
    this.proPictureTroSec,
    this.proDescriptionTroSec,
    this.proTypeTroSec,
    this.proPriseTroSec,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageDetailTroSec(
                      proDetailPicTroSec: proPictureTroSec,
                      proDetailPriseTroSec: proPriseTroSec,
                      proDetailTypeTroSec: proTypeTroSec,
                      proDetailDescriptionTroSec: proDescriptionTroSec,
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
                    proPictureTroSec,
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
                          proTypeTroSec,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          proPriseTroSec,
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
