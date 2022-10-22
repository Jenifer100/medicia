

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class registroPage extends StatefulWidget {
   registroPage({Key? key, required this.info}) : super(key: key);

   final SaveInfo data = new SaveInfo();
   List<String> info;

  @override
  State<registroPage> createState() => _registroPageState();
}

class _registroPageState extends State<registroPage> {

  final formkey = new GlobalKey<FormState>();

  late List<String> info = [];

  bool _isActive = false;
 String _nombre = '';
 String? apellido = '';
 String? dpi = '';
String? sexo = '';
 String? raza = '';
 String? telefono = '';

  @override
  void initState() {
    if(widget.info.isNotEmpty && widget.info.length >= 6){
      _isActive = true;
      telefono  = widget.info.removeLast();
      raza  = widget.info.removeLast();
      sexo  = widget.info.removeLast();
      dpi  = widget.info.removeLast();
      apellido = widget.info.removeLast();
      _nombre = widget.info.removeLast();
      print(widget.info);
    }

    super.initState();
    }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Container(height: 20,),
            Image.asset("assets/registro.png", width: 250,height: 200,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200]
              ),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Nombre:'),
                initialValue: _nombre,
                onSaved: (value){
                    _nombre = value!;
                },
                validator: (value){
                  if(value!.isEmpty){
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200]
              ),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Apellidos:'),
                initialValue: apellido,
                onSaved: (value){
                    apellido = value;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200]
              ),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'DPI:'),
                initialValue: dpi,
                onSaved: (value){

                    dpi = value;

                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200]
              ),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Sexo:'),
                initialValue: sexo,
                onSaved: (value){

                    sexo = value;

                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200]
              ),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Raza:'),
                initialValue: raza,
                onSaved: (value){
                    raza = value;
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.grey[200]
              ),
              child: TextFormField(
                decoration: InputDecoration(labelText: 'Telefono:'),
                initialValue: telefono,
                onSaved: (value){
                    telefono = value.toString();
                },
              ),
            ),
            TextButton(onPressed: _isActive? null : registrar,
                child: Text('Registrar')),
          ],
        ),
      ),
    );
  }
  void registrar(){
    if(formkey.currentState!.validate()){
    }
    _nombre.trim();
    apellido!.trim();
    formkey.currentState!.save();
    SaveInfo().writeCounter('$_nombre,$apellido,$dpi,$sexo,$raza,$telefono');
    Navigator.pop(context);
  }
}


class SaveInfo {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/info.txt');
  }

  Future<String> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return contents.toString();
    } catch (e) {
      // If encountering an error, return 0
      return '';
    }
  }

  Future<File> writeCounter(String? data) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$data');
  }
}
