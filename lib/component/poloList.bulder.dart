import 'package:flutter/material.dart';
import 'package:task/pages/pageDetailPolo.dart';

class Polo extends StatefulWidget {
  @override
  _PoloState createState() => _PoloState();
}

class _PoloState extends State<Polo> {
  var productsPolo = [
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
      body: ListView.builder(
          itemCount: productsPolo.length,
          itemBuilder: (ctx, index) {
            return Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: SingleProPolo(
                proPicturePolo: productsPolo[index]['picture'],
                proPrisePolo: productsPolo[index]['prise'],
                proTypePolo: productsPolo[index]['type'],
                proDescriptionPolo: productsPolo[index]['descreption'],
              ),
            );
          }),
    );
  }
}

class SingleProPolo extends StatelessWidget {
  final proPicturePolo;
  final proDescriptionPolo;
  final proTypePolo;
  final proPrisePolo;

  SingleProPolo({
    this.proPicturePolo,
    this.proDescriptionPolo,
    this.proTypePolo,
    this.proPrisePolo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PageDetailPolo(
                      proDetailPicPolo: proPicturePolo,
                      proDetailPrisePolo: proPrisePolo,
                      proDetailTypePolo: proTypePolo,
                      proDetailDescriptionPolo: proDescriptionPolo,
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
                    proPicturePolo,
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
                          proTypePolo,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          proPrisePolo,
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
