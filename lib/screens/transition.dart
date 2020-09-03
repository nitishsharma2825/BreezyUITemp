import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TransitionScreen extends StatefulWidget {
  @override
  _TransitionScreenState createState() => _TransitionScreenState();
}

class _TransitionScreenState extends State<TransitionScreen> {
  CarouselController controller = CarouselController();
  var i;
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Hero(
                  tag: "logo",
                  child: Image.asset(
                    "assets/Logo-white-back.jpg",
                    fit: BoxFit.cover,
                    height: 139,
                    width: 67,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.transparent,
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1.0,
                    height: MediaQuery.of(context).size.height / 2.3,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    autoPlayCurve: Curves.linear,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: itemList,
                carouselController: controller,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: itemList.map((url) {
                int index = itemList.indexOf(url);
                return Container(
                  width: 39.0,
                  height: 7.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: _current == index
                        ? Color(0xff7900FF)
                        : Color(0xffBFBFBF),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  final List<Widget> itemList = [
    BuildCarouselItem(
      imgPath: 'assets/images/onBoard1.png',
      title: 'CLICK AND GET REWARDED',
      subTitle: 'Earn an Ezy Coin for every pile of garbage you report',
      heigth: 258,
      width: 330,
    ),
    BuildCarouselItem(
      imgPath: 'assets/images/onBoard2.png',
      title: 'REDEEM EXCLUSIVE OFFERS',
      subTitle: 'Use your Ezy Coins in the store',
      heigth: 200,
      width: 357,
    ),
    BuildCarouselItem(
      imgPath: 'assets/images/onBoard3.png',
      title: 'CLEAN INDIA',
      subTitle: 'Every click is a step closer to a cleaner India',
      heigth: 193,
      width: 331,
    )
  ];
  // ].map((i) {
  //   return Builder(
  //     builder: (BuildContext context) {
  //       return Container(
  //         width: MediaQuery.of(context).size.width,
  //         margin: EdgeInsets.symmetric(horizontal: 5.0),
  //         decoration: BoxDecoration(color: Colors.transparent),
  //         child: GestureDetector(
  //           child: i,
  //         ),
  //       );
  //     },
  //   );
  // }).toList();
}

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
