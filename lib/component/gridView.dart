import 'package:flutter/material.dart';
import 'package:task/pages/pageDetail.dart';

class SinglePro extends StatelessWidget {
  final proPicture;
  final proDescription;
  final proType;
  final proPrise;

  SinglePro({
    this.proPicture,
    this.proDescription,
    this.proType,
    this.proPrise,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: proType,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PageDetail(
                          proDetailPic: proPicture,
                          proDetailDescription: proDescription,
                          proDetailPrise: proPrise,
                          proDetailType: proType,
                        )));
              },
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(proType),
                    title: Text('$proPrise'),
                  ),
                ),
                child: Image.asset(proPicture),
              ),
            ),
          )),
    );
  }
}
