import 'package:flutter/material.dart';

class Horizontal_listView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          /*Container(
            width: 160.0,
            height: 80.0,
            color: Colors.red,
          ),*/
          Categories(
            imageLocation: 'Images/image4.jpg',
            imageCaption: 'Cat1',
          ),
          Categories(
            imageLocation: 'Images/image1.jpg',
            imageCaption: 'Cat2',
          ),
          Categories(
            imageLocation: 'Images/image2.jpg',
            imageCaption: 'Cat3',
          ),
          Categories(
            imageLocation: 'Images/image3.jpg',
            imageCaption: 'Cat4',
          ),
          Categories(
            imageLocation: 'Images/image4.jpg',
            imageCaption: 'Cat1',
          ),
          Categories(
            imageLocation: 'Images/image1.jpg',
            imageCaption: 'Cat2',
          ),
          Categories(
            imageLocation: 'Images/image2.jpg',
            imageCaption: 'Cat3',
          ),
          Categories(
            imageLocation: 'Images/image3.jpg',
            imageCaption: 'Cat4',
          ),
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Categories({
    this.imageLocation,
    this.imageCaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          height: 200.0,
          child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                height: 80.0,
                alignment: Alignment.topCenter,
                child: Text(imageCaption),
              )),
        ),
      ),
    );
  }
}
