import 'package:breezy_ui/screens/nextscreengridview.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: MyHomePage(),
        backgroundColor: kPrimaryColor,
        image: Image.asset("assets/breezylogo.jpeg"),
        photoSize: 100.0,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
                tag: "logo",
                child: Image.asset(
                  "assets/breezylogo.jpeg",
                  fit: BoxFit.cover,
                  height: 187,
                  width: 90,
                )),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => NextScreen2()));
              },
              child: Container(
                height: 81,
                width: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  color: kAccentColor,
                ),
                child: Text("Get Started", style: kbodyText1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
