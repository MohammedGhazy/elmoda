import 'package:flutter/material.dart';
import 'package:task/pages/pageDetailH&M.dart';

class HandM extends StatefulWidget {
  @override
  _HandMState createState() => _HandMState();
}

class _HandMState extends State<HandM> {
  var productsHandM = [
    {
      'picture': 'assets/images/H&M/1.jfif',
      'type': 'طقم رجالي',
      'prise': '1000ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 36-38'
    },
    {
      'picture': 'assets/images/H&M/2.jfif',
      'type': 'تيشرت',
      'prise': '1200ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 40-44'
    },
    {
      'picture': 'assets/images/H&M/3.jfif',
      'type': 'تيشرت رجالي',
      'prise': '300ج',
      'descreption': 'قميص عالي الجوده..'
    },
    {
      'picture': 'assets/images/H&M/4.jfif',
      'type': 'تيشرت رجالي',
      'prise': '400ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
    {
      'picture': 'assets/images/H&M/5.jfif',
      'type': 'بنطلون',
      'prise': '300ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: productsHandM.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: SingleProHandM(
                proPictureHandM: productsHandM[index]['picture'],
                proPriseHandM: productsHandM[index]['prise'],
                proTypeHandM: productsHandM[index]['type'],
                proDescriptionHandM: productsHandM[index]['descreption'],
              ),
            );
          }),
    );
  }
}

class SingleProHandM extends StatelessWidget {
  final proPictureHandM;
  final proDescriptionHandM;
  final proTypeHandM;
  final proPriseHandM;

  SingleProHandM({
    this.proPictureHandM,
    this.proDescriptionHandM,
    this.proTypeHandM,
    this.proPriseHandM,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageDetailHandM(
                      proDetailPicHandM: proPictureHandM,
                      proDetailPriseHandM: proPriseHandM,
                      proDetailTypeHandM: proTypeHandM,
                      proDetailDescriptionHandM: proDescriptionHandM,
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
                    proPictureHandM,
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
                          proTypeHandM,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          proPriseHandM,
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
