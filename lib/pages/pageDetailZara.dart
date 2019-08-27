import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PageDetailZara extends StatefulWidget {
  final proDetailPicZara;
  final proDetailTypeZara;
  final proDetailPriseZara;
  final proDetailDescriptionZara;

  PageDetailZara({
    this.proDetailPicZara,
    this.proDetailTypeZara,
    this.proDetailPriseZara,
    this.proDetailDescriptionZara,
  });

  @override
  _PageDetailZaraState createState() => _PageDetailZaraState();
}

class _PageDetailZaraState extends State<PageDetailZara> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('المنتج'),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(widget.proDetailPicZara),
            )),
          ),
          SizedBox(
            height: 20.0,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      ' النوع:  ${widget.proDetailTypeZara}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' السعر:  ${widget.proDetailPriseZara}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.pink[200],
                    child: Text('إضافه إلي السله'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'الوصف:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(widget.proDetailDescriptionZara),
                ),
              ],
            ),
          ),
          Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'قيم هذا المنتج:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: SmoothStarRating(
                allowHalfRating: true,
                onRatingChanged: (v) {
                  rating = v;
                  setState(() {});
                },
                starCount: 5,
                rating: rating,
                size: 40.0,
                color: Colors.yellow,
                borderColor: Colors.pink[200],
                spacing: 0.0),
          ),
        ],
      ),
    );
  }
}
