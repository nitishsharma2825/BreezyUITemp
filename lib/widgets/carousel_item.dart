import 'package:flutter/material.dart';

class BuildCarouselItem extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subTitle;
  final double heigth;
  final double width;
  BuildCarouselItem(
      {@required this.imgPath,
      this.title,
      this.subTitle,
      this.heigth,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: heigth,
          width: width,
          child: Image(
            image: AssetImage(imgPath),
            fit: BoxFit.fitWidth,
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontFamily: 'AvenirLT'),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontFamily: 'AvenirLT'),
            ),
          ),
        )
      ],
    );
  }
}
