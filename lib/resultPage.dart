


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
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                Container(
                  height: 60,
                  width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                Container(
                  height: 60,
                  width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                Container(
                  height: 60,
                  width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                Container(
                  height: 60,
                  width: 250,
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
