import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:task/component/gridView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget imageCarousel = Container(
    height: 200.0,
    child: Carousel(
      images: [
        AssetImage('assets/images/slider/bdla.jpg'),
        AssetImage('assets/images/slider/kames.jpg'),
        AssetImage('assets/images/slider/tro.jpg'),
      ],
      boxFit: BoxFit.cover,
      dotColor: Colors.pink[200],
      dotSize: 2.0,
      indicatorBgPadding: 4.0,
      autoplay: false,
    ),
  );
  var products = [
    {
      'picture': 'assets/images/recentPro/1.jpg',
      'type': 'بدله رجالي',
      'prise': '1000ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 36-38'
    },
    {
      'picture': 'assets/images/recentPro/2.jpg',
      'type': 'بدله',
      'prise': '1200ج',
      'descreption': 'بدله عاليه الجوده..المقاسات المتاحه 40-44'
    },
    {
      'picture': 'assets/images/recentPro/3.jpg',
      'type': 'قميص',
      'prise': '300ج',
      'descreption': 'قميص عالي الجوده..'
    },
    {
      'picture': 'assets/images/recentPro/4.jpg',
      'type': 'بنطلون رجالي',
      'prise': '400ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
    {
      'picture': 'assets/images/recentPro/5.jpg',
      'type': 'بنطلون',
      'prise': '300ج',
      'descreption': 'بنطلون عالي الجوده..المقاسات المتاحه 40-43'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('الرئيسيه'),
          centerTitle: true,
          backgroundColor: Colors.pink[200],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: imageCarousel,
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
              [
                //image_carosel,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'وصلنا حديثا',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      color: Colors.pink[200],
                    ),
                  ),
                ),
              ],
            )),
            SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                delegate: SliverChildBuilderDelegate((ctx, index) {
                  return Container(
                    child: SinglePro(
                      proPicture: products[index]['picture'],
                      proPrise: products[index]['prise'],
                      proDescription: products[index]['descreption'],
                      proType: products[index]['type'],
                    ),
                  );
                }, childCount: products.length //childCount: products.length
                    )),
          ],
        ));
  }
}
//SliverGrid(
//gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//delegate: SliverChildBuilderDelegate((BuildContext context , int index){
//return Container(child: product());
//},
//)
//)
