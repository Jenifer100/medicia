

import 'package:flutter/material.dart';

class RadioPerson3 extends StatefulWidget {
   RadioPerson3({Key? key, this.name1 = '', this.name2 = '', this.name3 =''}) : super(key: key);

  int valor = 0;
  final String name1;
  final String name2;
  final String name3;


  @override
  State<RadioPerson3> createState() => _RadioPerson3State();
}

class _RadioPerson3State extends State<RadioPerson3> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Radio(
              value: 0,
              groupValue: widget.valor,
              onChanged: (value){
                setState(() {
                  widget.valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
            Text(widget.name1,style: TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: widget.valor,
              onChanged: (value){
                setState(() {
                  widget.valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
            Text(widget.name2,style: TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: widget.valor,
              onChanged: (value){
                setState(() {
                  widget.valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
            Text(widget.name3,style: TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
      ],
    );
  }
}
