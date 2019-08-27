import 'package:flutter/material.dart';
import 'package:task/pages/pageDetailZara.dart';

class Zara extends StatefulWidget {
  @override
  _ZaraState createState() => _ZaraState();
}

class _ZaraState extends State<Zara> {
  var productsZara = [
    {
      'picture': 'assets/images/zara/1.jpg',
      'type': 'طقم رجالي',
      'prise': '1000ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 36-38'
    },
    {
      'picture': 'assets/images/zara/2.jpg',
      'type': 'بلطو',
      'prise': '1200ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 40-44'
    },
    {
      'picture': 'assets/images/zara/3.jpg',
      'type': 'طقم رجالي',
      'prise': '300ج',
      'descreption': 'قميص عالي الجوده..'
    },
    {
      'picture': 'assets/images/zara/4.jpg',
      'type': 'تيشرت رجالي',
      'prise': '400ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
    {
      'picture': 'assets/images/zara/5.jpg',
      'type': 'جاكت',
      'prise': '300ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: productsZara.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: SingleProZara(
                proPictureZara: productsZara[index]['picture'],
                proPriseZara: productsZara[index]['prise'],
                proTypeZara: productsZara[index]['type'],
                proDescriptionZara: productsZara[index]['descreption'],
              ),
            );
          }),
    );
  }
}

class SingleProZara extends StatelessWidget {
  final proPictureZara;
  final proDescriptionZara;
  final proTypeZara;
  final proPriseZara;

  SingleProZara({
    this.proPictureZara,
    this.proDescriptionZara,
    this.proTypeZara,
    this.proPriseZara,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageDetailZara(
                      proDetailPicZara: proPictureZara,
                      proDetailTypeZara: proTypeZara,
                      proDetailPriseZara: proPriseZara,
                      proDetailDescriptionZara: proDescriptionZara,
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
                    proPictureZara,
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
                          proTypeZara,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          proPriseZara,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        //Text(pro_descreption_zara,overflow: TextOverflow.ellipsis,
                        //maxLines: 2,
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
