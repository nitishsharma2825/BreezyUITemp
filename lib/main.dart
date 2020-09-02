import 'package:breezy_ui/screens/nextscreengridview.dart';
import 'package:flutter/material.dart';
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
        primaryColor:Color.fromRGBO(121, 0, 255, 1),
        accentColor: Color.fromRGBO(255, 204, 0, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Avenir",
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white,fontSize: 25),bodyText2: TextStyle(color: Colors.black,fontSize: 18),),
      ),
      home: SplashScreen(
          seconds: 2,
          navigateAfterSeconds: MyHomePage(),
          backgroundColor: Color.fromRGBO(121, 0, 255, 1),
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
      backgroundColor: Color.fromRGBO(121, 0, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(tag:"logo",child: Image.asset("assets/breezylogo.jpeg",fit: BoxFit.cover,height: 187,width: 90,)),
            SizedBox(height: 60,),
            InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>NextScreen2()));
              },
              child: Container(
                height: 81,
                width: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(27),color: Color.fromRGBO(255, 204, 0, 1),),
                child: Text("Get Started",style: Theme.of(context).textTheme.bodyText1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
