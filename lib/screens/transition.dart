import 'package:flutter/material.dart';
class TransitionScreen extends StatefulWidget {
  @override
  _TransitionScreenState createState() => _TransitionScreenState();
}

class _TransitionScreenState extends State<TransitionScreen> {
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
            )
          ],
        ),
      ),
    );
  }
}
