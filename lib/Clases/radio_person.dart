import 'package:flutter/material.dart';


class RadioPerson extends StatefulWidget {
   RadioPerson({Key? key, this.name1 = '1', this.name2 = '2', this.name3 = '3', this.name4 = '4'}) : super(key: key);

  final String name1;
  final String name2;
  final String name3;
  final String name4;
  int valor = 0;

  @override
  State<RadioPerson> createState() => _RadioPersonState();


}


class _RadioPersonState extends State<RadioPerson> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Radio(
              value: 0,
              groupValue: widget.valor,
              onChanged: (value) {
                setState(() {
                  widget.valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
            Text(widget.name1,
                style: TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: widget.valor,
              onChanged: (value) {
                setState(() {
                  widget.valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
            Text(widget.name2,
                style: TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,
              groupValue: widget.valor,
              onChanged: (value) {
                setState(() {
                  widget.valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
            Text(widget.name3,
                style: const TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 3,
              groupValue: widget.valor,
              onChanged: (value) {
                setState(() {
                  widget.valor = int.parse(value.toString());
                  print(value);
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
            Text(widget.name4,
                style: TextStyle(color: Colors.grey, fontSize: 17)),
          ],
        ),
      ],
    );
  }
}
