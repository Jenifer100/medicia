

import 'package:flutter/material.dart';

class Secoundpage extends StatefulWidget {
  const Secoundpage({Key? key}) : super(key: key);

  @override
  State<Secoundpage> createState() => _SecoundpageState();
}

class _SecoundpageState extends State<Secoundpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
          backgroundColor: Colors.black87,
        body: Column(
         children: const <Widget>[
          Center(
             child:  Text("Resultado", style: TextStyle(fontSize: 30, color: Colors.white))
           )
         ],
        )
      )
    );
  }
}
