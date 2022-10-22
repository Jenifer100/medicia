
import 'package:flutter/material.dart';

class tratamientoPage extends StatefulWidget {
   tratamientoPage({Key? key, this.enfermedad = 'Aun no se ha diagnosticado', this.tratamiento = '...'}) : super(key: key);

   String enfermedad;
   String tratamiento;

  @override
  State<tratamientoPage> createState() => _tratamientoPageState();
}

class _tratamientoPageState extends State<tratamientoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/trata.png',width: 250, height: 200),
                Text("TRATAMIENTO", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                Text("Tu tratamiento para "+widget.enfermedad+" es:", style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,),
                Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 300,
                          width: 320,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15)
                          ),
                            child: Text(widget.tratamiento,
                              overflow: TextOverflow.clip,
                              maxLines: null,
                            ),
                        )
                      ]
        ),
        ]
      )
    )
    );
  }
}
