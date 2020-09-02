import 'package:breezy_ui/screens/transition.dart';
import 'package:breezy_ui/widgets/languagecontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NextScreen2 extends StatefulWidget {
  @override
  _NextScreen2State createState() => _NextScreen2State();
}

class _NextScreen2State extends State<NextScreen2> {
  bool select1=false;
  bool select2=false;
  bool select3=false;
  bool select4=false;
  bool select5=false;
  bool select6=false;
  bool select7=false;
  bool select8=false;
  void deselect(){
    select1=false;
  }
  @override
  Widget build(BuildContext context) {
    var l=["English","Hindi","Marathi","Gujarati","Bengali","Tamil","Kannada","Telugu"];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Hero(
                tag: "logo",
                child: Image.asset(
                  "assets/Logo-white-back.jpg",
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.09375,
                  width: 40,
                )
            ),
            Container(
              padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(26),topRight: Radius.circular(26)),
                    border: Border.all(style: BorderStyle.solid,color: Color.fromRGBO(153, 153, 153, 1),width: 1)
                ),
              height: MediaQuery.of(context).size.height * 0.68,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Please select a language",),
                  Container(
                    child: SizedBox(
                      height: 310,
                      child: GridView.builder(
                        padding: const EdgeInsets.all(25),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 20,
                          childAspectRatio: 146/54,
                        ),
                        itemBuilder: (context, index) => LanguageContainer(select1, deselect,l[index]),
                        itemCount:8,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>TransitionScreen()));
                    },
                    child: Container(
                      height: 81,
                      width: 289,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(27),color: Color.fromRGBO(255, 204, 0, 1),),
                      child: Text("Proceed",style: Theme.of(context).textTheme.bodyText1),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
