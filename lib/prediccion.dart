

import 'package:flutter/material.dart';
import 'package:medicia/Clases/radio_person.dart';
import 'package:medicia/Clases/illness.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'Clases/radio_peron3.dart';
import 'Clases/radio_person2.dart';



class prediccionPage extends StatefulWidget {
  const prediccionPage({Key? key}) : super(key: key);

  @override
  State<prediccionPage> createState() => _prediccionPageState();
}

class _prediccionPageState extends State<prediccionPage> {

  double _indicador = 0;
  String _boton = "Siguiente";
  List<int> _reapuestas = [];
  int _contador = 0;

 dynamic opcion = RadioPerson();




  List<String> preguntas = [
    '¿Cuál de los siguientes alimentos es el que más consume?',
    'Seleccione su genero',
    '¿Tiene familiares con enfermedades hereditarias?',
    'Seleccione el rango de su edad',
    'Seleccione su raza',
    '¿Ha tenido alguna cirugía?',
    '¿Consume tabaco?',
    '¿Consume alcohol?',
    '¿Le han diagnosticado una enfermedad de riesgo,\nindique el nivel de riesgo de su enfermedad?',
    '¿Le han diagnosticado Anemia Perniciosa?',
    '¿Le han diagnosticado Aclorhidria anteriormente?',
    '¿Cuál es su contextura actual?',
    '¿Ha presentado Indigestión o acidez estomacal?',
    '¿Actualmente está en algún Tratamiento?\nSeleccione en cual ',
    '¿Ha presentado dolor abdominal?',
    '¿Ha presentado síntomas de gripe?',
    '¿Ha sentido fiebre o ha tenido \nconvulsiones últimamente',
    '¿Ha tenido catarro en los últimos 3 días?',
    '¿Cree usted que ha perdido peso en el último mes?',
    '¿Ha sentido inflamada o irritada la garganta?',
    '¿Ha tenido problemas para respirar últimamente?',
    '¿Ha presentado salivas constantes últimamente?',
    '¿Su respiración es acelerada últimamente?',
    '¿Ha estado tosiendo persistentemente?',
    '¿Ha presentado ronquera?',
    '¿Ha tenido moco y flema amarilla últimamente?',
    '¿Ha sentido algún dolor en el pecho?',
    '¿Le ha dolido la cabeza?',
    '¿Se ha sentido fatigado?',
    '¿Ha tenido nauseas últimamente?',
    '',
  ];

 late String pregu;
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    pregu = preguntas.elementAt(_contador);
    opcion = seleccion(_contador);
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/prediccion.png", width: 250, height: 200),
        Container(
          padding: EdgeInsets.only(right: 1.0),
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    ((_indicador * 100).toInt()).toString() + "%  ",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.pink),
                  )
                ],
              ),
              LinearProgressIndicator(
                value: _indicador,
              ),
            ],
          ),
        ),

        Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pregunta "+ (1+_contador).toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  Text("\n"+pregu),
                  Text("\nSeleccione una opcion:\n"),
                  opcion
                ],
              )
            ),
        Container(
          height: 40,
          width: width,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.pink
          ),
          child:  TextButton(
              onPressed: () {
                startQuestion();
              },
              child: Text(_boton, style: TextStyle(color: Colors.white),)),
        )
      ],
    ));
  }

  void startQuestion() {
    setState(() {
      if (_indicador == 1 || _indicador > 0.98) {
        String result = new Illness().resultado(_reapuestas);
        SaveEnfermedad().writeCounter(result);
        print(result);
        Navigator.pop(context);
      }
      _indicador += 0.0344827586206897;
      _reapuestas.add(opcion.valor);
      if (_indicador == 1 || _indicador > 0.98) {
        _boton = "Finalizar";
        _contador += 1;
      } else {
        _boton = "Siguiente";
        _contador += 1;
      }
    });
  }

  dynamic seleccion(int opt){

    dynamic opcion;

    switch(opt){
      case 0:
        opcion = RadioPerson3(name1: 'Vegetales', name2: 'Frutas',name3: 'Pescados y encurtidos',);

            break;
      case 1:
        opcion = RadioPerson2(name1: 'Masculino',name2: 'Femenino',);
            break;
      case 2:
        opcion =  RadioPerson3(name1: 'Ninguno',name2: 'Menos de 3',name3: 'Mas de 3',);
        break;
      case 3:
        opcion =  RadioPerson2(name1: '55 años o mas',name2: '54 años o menos',);
        break;
      case 4:
        opcion = RadioPerson3(name1: 'Negro',name2: 'Blanco',name3: 'Mestizo',);
        break;
      case 5:
        opcion = RadioPerson(name1: 'Nunca',name2: 'Una vez',name3: 'Muchas veces',name4: 'Siempre',);
        break;
      case 6:
        opcion = new RadioPerson(name1: 'Nada',name2: 'Poco',name3: 'Mucho',name4: 'Excesivo',);
        break;
      case 7:
        opcion = RadioPerson(name1: 'Nada',name2: 'Poco',name3: 'Mucho',name4: 'Excesivo',);
        break;
      case 8:
        opcion = RadioPerson(name1: 'Nada',name2: 'Leve',name3: 'Medio',name4: 'Alto',);
        break;
      case 9:
        opcion = RadioPerson3(name1: 'Nada',name2: 'Leve',name3: 'Alto',);
        break;
      case 10:
        opcion = RadioPerson3(name1: 'Nada',name2: 'Leve',name3: 'Alto',);
        break;
      case 11:
        opcion = RadioPerson3(name1: 'Obeso',name2: 'Grueso',name3: 'Delgado',);
        break;
      case 12:
        opcion = RadioPerson(name1: 'Nunca',name2: 'Una vez',name3: 'Muchas veces',name4: 'Siempre',);
        break;
      case 13:
        opcion = RadioPerson(name1: 'Cirujia',name2: 'Brocodilatadores',name3: 'Vacunas',name4: 'Terapia Biologica',);
        break;
      default:
        opcion = RadioPerson(name1: 'Nada',name2: 'Leve',name3: 'Moderado',name4: 'Fuerte');
    }
    return opcion;
  }

}


class SaveEnfermedad {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/enfermedad.txt');
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