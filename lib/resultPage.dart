

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Secoundpage extends StatefulWidget {
   Secoundpage({Key? key}) : super(key: key);



   final _f = new DateFormat('dd-MM-yyyy');

  @override
  State<Secoundpage> createState() => _SecoundpageState();
}

class _SecoundpageState extends State<Secoundpage> {
  @override
  Widget build(BuildContext context) {
    final _fecha = widget._f.format(new DateTime.now());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.people),
              Text("Nombre"),
              Container(
                child: Text(_fecha.toString()),
              ),
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent[400],
                  borderRadius: BorderRadius.circular(40)
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
