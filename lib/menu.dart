import 'package:flutter/material.dart';
import 'package:medicia/prediccion.dart';
import 'package:medicia/registro.dart';
import 'package:medicia/resultPage.dart';
import 'package:medicia/tratamiento.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class menuPage extends StatefulWidget {
   menuPage({Key? key}) : super(key: key);

final CounterStorage counterStorage = new CounterStorage();

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {

  List<String> _counter = [];
  List<String> _arrEnfermedad = [];


  @override
  void initState() {
    super.initState();
    widget.counterStorage.readCounter().then((value) {
      setState(() {
        _counter = value.split(',');
        print(_counter);
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
    });

    // Write the variable as a string to the file.
    return widget.counterStorage.writeCounter(0);
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(height: 50.0,),
          const Text("Menu Principal", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
          const Text("MEDIC IA", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),),
          const Text("¿Que deseas hacer?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton(onPressed: (){    widget.counterStorage.readCounter().then((value) {
                  setState(() {
                    _counter = value.split(',');
                  });
                });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>registroPage(info: _counter,)));}, child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Icon(Icons.person, size: 30,), Text("Registrar Paciente", style: TextStyle(fontSize: 14, color: Colors.black87),)],
                )),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>prediccionPage()));}, child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Icon(Icons.healing, size: 30,color: Colors.blueAccent,), Text("Predecir Enfermedad", style: TextStyle(fontSize: 14, color: Colors.black87),)],
                )),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton(onPressed: (){
                  widget.counterStorage.readEnfermedad().then((value) {
                      _arrEnfermedad = value.split(';');
                  }).whenComplete(() => {
                  if(_arrEnfermedad.length == 2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>tratamientoPage(enfermedad: _arrEnfermedad[0],tratamiento: _arrEnfermedad[1],)))
                }else{
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tratamientoPage()))
                  }
                  });

                  }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Icon(Icons.medication_liquid, size: 30,color: Colors.greenAccent,), Text("Consultar Tratamiento", style: TextStyle(fontSize: 14, color: Colors.black87),)],
                )),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Secoundpage()));
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Icon(Icons.medical_information_sharp, size: 30,color: Colors.teal[800],), Text("Generar Reposrte \nde Historial Medico", style: TextStyle(fontSize: 14, color: Colors.black87),)],
                )),
              ),
              Container(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }

}

class CounterStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/info.txt');
  }
  Future<File> get _localEnfermedad async {
    final path = await _localPath;
    return File('$path/enfermedad.txt');
  }

  Future<String> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return '0';
    }
  }

  Future<String> readEnfermedad() async {
    try {
      final file = await _localEnfermedad;

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return '0';
    }
  }

  Future<File> writeEnfermedad(String counter) async {
    final file = await _localEnfermedad;

    // Write the file
    return file.writeAsString(counter);

  }
  Future<File> writeCounter(int counter) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$counter');
  }
}
