

import 'package:flutter/material.dart';

class RadioPerson2 extends StatefulWidget {
   RadioPerson2({Key? key, this.name1 = '', this.name2 = ''}) : super(key: key);
   int valor = 0;
   String name1;
   String name2;



  @override
  State<RadioPerson2> createState() => _RadioPerson2State(valor, name1, name2);
}

class _RadioPerson2State extends State<RadioPerson2> {

  _RadioPerson2State(this.valor, this.name1, this.name2);
  int? valor;
  String name1;
  String name2;

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
            Text(name1,style: TextStyle(color: Colors.grey, fontSize: 17)),
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
            Text(name2,style: TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
      ],
    );
  }
}
