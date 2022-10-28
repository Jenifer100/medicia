


import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

class Secoundpage extends StatefulWidget {
   Secoundpage({Key? key}) : super(key: key);





  @override
  State<Secoundpage> createState() => _SecoundpageState();
}

class _SecoundpageState extends State<Secoundpage> {
  final _fecha = new DateFormat('dd-MM-yyyy').format(new DateTime.now());
  final controller = ScreenshotController();

  @override
  Widget build(BuildContext context) => Screenshot(
      controller: controller,
          child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.people),
                Text("Jenifer Corado"),
                Container(
                  child: Text(_fecha.toString()),
                ),
                Container(
                  height: 60,
                  width: 300,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40)
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Motivo de consulta", style: TextStyle(color: Colors.grey[500]),),
                      Container(
                        height: 5,
                      ),
                      Text("       Consulta General", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 300,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40)
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Enfermedad Precidad", style: TextStyle(color: Colors.grey[500]),),
                      Container(
                        height: 5,
                      ),
                      Text("       Enfermedad Respiratoria Leve", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 300,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40)
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Antecedentes", style: TextStyle(color: Colors.grey[500]),),
                      Container(
                        height: 5,
                      ),
                      Text("       Ninguno", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 300,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40)
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Tratamiento", style: TextStyle(color: Colors.grey[500]),),
                      Container(
                        height: 5,
                      ),
                      Text("       Beber liquidos en abundancia", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
                Container(
                    height: 60,
                    width: 300,
                    margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(40)
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Habitos", style: TextStyle(color: Colors.grey[500]),),
                      Container(
                        height: 5,
                      ),
                      Text("       Ninguno", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 250,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.lightGreenAccent[400],
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child:
                  TextButton(
                    onPressed: ()async{

                      final image = await controller.capture();
                      await saveImage(image);
                    },
                    child: Text('Reportar'),
                  ),
                )
              ],
            ),
          )
      )
  ),
  );
  
  Future<String> saveImage(Uint8List? bytes) async {

    await [Permission.storage].request();
    final time = DateTime.now()
    .toIso8601String()
    .replaceAll('.', '-')
    .replaceAll(':', '-');

    final name = 'Reporte_$time';
    
    final result = await ImageGallerySaver.saveImage(bytes!, name:name);
    
    return result['filepath'];
    
  }
}
