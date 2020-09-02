import 'package:flutter/material.dart';
class LanguageContainer extends StatefulWidget {
  bool select;
  Function deselect;
  String lang;
  LanguageContainer(this.select,this.deselect,this.lang);
  @override
  _LanguageContainerState createState() => _LanguageContainerState();
}

class _LanguageContainerState extends State<LanguageContainer> {
  bool sel=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.select=!widget.select;
        });
        widget.deselect();
      },
      child: Container(
          width: 145,
          height: 56,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(style: BorderStyle.solid,color: Color.fromRGBO(153, 153, 153, 1),width: 1)
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                splashColor: Colors.indigo,
                radius: 10,
                onTap: (){

                },
                child: Container(
                  height:22,
                  width: 22,
                  decoration: BoxDecoration(
                      color: widget.select?Color.fromRGBO(121, 0, 255, 1):null,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(style: BorderStyle.solid,color: Color.fromRGBO(153, 153, 153, 1),width: 1)
                  ),
                ),
              ),
              Text("${widget.lang}")
            ],
          )
      ),
    );
  }
}
