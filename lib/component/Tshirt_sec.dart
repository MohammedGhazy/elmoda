import 'package:flutter/material.dart';
import 'package:task/pages/pageDetail_shirtSec.dart';

class Shirt extends StatefulWidget {
  @override
  _ShirtState createState() => _ShirtState();
}

class _ShirtState extends State<Shirt> {
  var shirtSection = [
    {
      'picture': 'assets/images/Polo/1.jfif',
      'type': 'تيشرت',
      'prise': '100ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 36-38'
    },
    {
      'picture': 'assets/images/Polo/2.jfif',
      'type': 'تيشرت',
      'prise': '200ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 40-44'
    },
    {
      'picture': 'assets/images/Polo/3.jfif',
      'type': 'تيشرت رجالي',
      'prise': '300ج',
      'descreption': 'قميص عالي الجوده..'
    },
    {
      'picture': 'assets/images/Polo/4.jfif',
      'type': 'تيشرت رجالي',
      'prise': '400ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
    {
      'picture': 'assets/images/Polo/5.jfif',
      'type': 'تيشرت',
      'prise': '500ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('قسم التيشرتات'),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: ListView.builder(
          itemCount: shirtSection.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: SingleProShirtSec(
                proPictureShirtSec: shirtSection[index]['picture'],
                proPriseShirtSec: shirtSection[index]['prise'],
                proTypeShirtSec: shirtSection[index]['type'],
                proDescriptionShirtSec: shirtSection[index]['descreption'],
              ),
            );
          }),
    );
  }
}

class SingleProShirtSec extends StatelessWidget {
  final proPictureShirtSec;
  final proDescriptionShirtSec;
  final proTypeShirtSec;
  final proPriseShirtSec;

  SingleProShirtSec({
    this.proPictureShirtSec,
    this.proDescriptionShirtSec,
    this.proTypeShirtSec,
    this.proPriseShirtSec,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageDetailShirtSec(
                      proDetailPicShirtSec: proPictureShirtSec,
                      proDetailTypeShirtSec: proTypeShirtSec,
                      proDetailPriseShirtSec: proPriseShirtSec,
                      proDetailDescriptionShirtSec: proDescriptionShirtSec,
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
                    proPictureShirtSec,
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
                          proTypeShirtSec,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          proPriseShirtSec,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        //)
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
