import 'package:flutter/material.dart';


class RadioPerson extends StatefulWidget {
  const RadioPerson({Key? key, this.valor}) : super(key: key);

  final int? valor;

  @override
  State<RadioPerson> createState() => _RadioPersonState(valor);
}

class _RadioPersonState extends State<RadioPerson> {


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: [
            const Text("1",style: TextStyle(color: Colors.grey, fontSize: 17)),
            Radio(
              value: 0,
              groupValue: valor,
              onChanged: (value){
                setState(() {
                  valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
          ],
        ),
        Row(
          children: [
            const  Text("2",style: TextStyle(color: Colors.grey, fontSize: 17)),
            Radio(
              value: 1,
              groupValue: valor,
              onChanged: (value){
                setState(() {
                  valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
          ],
        ),
        Row(
          children: [
            const Text("3",style: TextStyle(color: Colors.grey, fontSize: 17)),
            Radio(
              value: 2,
              groupValue: valor,
              onChanged: (value){
                setState(() {
                  valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
          ],
        ),
        Row(
          children: [
            const Text("4",style: TextStyle(color: Colors.grey, fontSize: 17)),
            Radio(
              value: 3,
              groupValue: valor,
              onChanged: (value){
                setState(() {
                  valor = int.parse(value.toString());
                });
              },
              activeColor: Colors.pink,
              fillColor: MaterialStateProperty.all(Colors.pink),
            ),
          ],
        ),
      ],
    );
  }


  _RadioPersonState(this.valor);

  int? valor;
}

