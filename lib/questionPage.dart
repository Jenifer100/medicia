// import 'package:flutter/material.dart';
// import 'package:medicia/Clases/radio_person.dart';
// import 'package:medicia/Clases/radio_peron3.dart';
// import 'package:medicia/Clases/radio_person2.dart';
// import 'package:medicia/resultPage.dart';
//
// class QuestionPage extends StatefulWidget {
//   const QuestionPage({Key? key}) : super(key: key);
//
//   @override
//   State<QuestionPage> createState() => _QuestionPageState();
// }
//
// int? dolorabdo = 0;
// int? gripe;
// int? fiebre;
// int? catarro;
// int? perdidapeso;
// int? irritacion;
// int? difresp;
// int? salivar;
// int? resprap;
// int? tospers;
// int? ronquera;
// int? moco;
// int? dolorpecho;
// int? dolorcabeza;
// int? fatiga;
// int? nauseas;
//
// int? alimentacion;
// int? genero;
// int? antecedentes;
// int? edad;
// int? raza;
// int? cirugiaPrev;
// int? tabaco;
// int? alcohol;
// int? riesgo;
// int? anemia;
// int? acloridria;
// int? contextura;
// int? acidez;
// int? tratamiento;
//
//
// class _QuestionPageState extends State<QuestionPage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           backgroundColor: Colors.black87,
//           body: Container(
//             child: ListView(
//               padding: const EdgeInsets.all(20.0),
//               children: [
//             const  SizedBox(
//                  height: 20,
//                ),
//                const Center(child: Text("Dolor abdominal", style: TextStyle(fontSize: 18, color: Colors.white))),
//                  RadioPerson(valor: dolorabdo, name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte',),
//                const Divider(),
//                 const Center(child: Text("Gripe", style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: gripe,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                const Divider(),
//                 const Center(child: Text('Fiebre', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: fiebre,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Catarro', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: catarro,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Perdida de peso', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: perdidapeso,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Irritacion e Inflamacion de garganta', style: TextStyle(fontSize: 12, color: Colors.white))),
//                 RadioPerson(valor: irritacion,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Dificultad para respirar', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: difresp,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Salivar', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: salivar,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Respiraciones rapidas', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: resprap,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Tos', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: tospers,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Ronquera y dolor de garganta', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: ronquera,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Moco y flema amarrilla', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: moco,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Dolor de Pecho', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: dolorpecho,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Dolor de cabeza', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: dolorcabeza,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Fatiga', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: fatiga,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Nauseas', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: nauseas,name1: 'nada',name2: 'leve',name3: 'moderado',name4: 'fuerte'),
//                 const Divider(),
//                 const Center(child: Text('Alimentacion', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson3(valor: alimentacion,name1: 'Vegetales',name2: 'Frutas',name3: 'Pescados y encurtidos'),
//                 const Divider(),
//                 const Center(child: Text('Genero', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson2(valor: genero,name1: 'Masculino',name2: 'Femenino'),
//                 const Divider(),
//                 const Center(child: Text('Antecendentes Familiares', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson3(valor: antecedentes,name1: 'Nunca',name2: 'A veces',name3: 'Siempre'),
//                 const Divider(),
//                 const Center(child: Text('Edad', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson2(valor: genero,name1: 'mas de 55',name2: 'menos de 55'),
//                 const Divider(),
//                 const Center(child: Text('Raza', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson3(valor: antecedentes,name1: 'Negro',name2: 'Blanco',name3: 'Mestizo'),
//                 const Divider(),
//                 const Center(child: Text('Cirugia Previa', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: cirugiaPrev,name1: 'nunca',name2: 'una vez',name3: 'muchas veces',name4: 'siempre',),
//                 const Divider(),
//                 const Center(child: Text('Tabaco', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: tabaco,name1: 'nada',name2: 'poco',name3: 'mucho',name4: 'excesivo'),
//                 const Divider(),
//                 const Center(child: Text('Alcohol', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: alcohol,name1: 'nada',name2: 'poco',name3: 'mucho',name4: 'excesivo'),
//                 const Divider(),
//                 const Center(child: Text('Riesgo', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: riesgo,name1: 'nada',name2: 'leve',name3: 'medio',name4: 'alto'),
//                 const Divider(),
//                 const Center(child: Text('Anemia Perniciosa', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson3(valor: anemia,name1: 'nada',name2: 'leve',name3: 'alto'),
//                 const Divider(),
//                 const Center(child: Text('Aclorhidria', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson3(valor: anemia,name1: 'nada',name2: 'leve',name3: 'alto'),
//                 const Divider(),
//                 const Center(child: Text('Contextura', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson3(valor: anemia,name1: 'Obeso',name2: 'Grueso',name3: 'Delgado'),
//                 const Divider(),
//                 const Center(child: Text('Indigestion o Acidez Estomacal', style: TextStyle(fontSize: 18, color: Colors.white))),
//                 RadioPerson(valor: riesgo,name1: 'nunca',name2: 'una vez',name3: 'muchas veces',name4: 'siempre'),
//                 const Divider(height: 10),
//                 const Center(child: Text('Analizar', style: TextStyle(color: Colors.white, fontSize: 24),)),
//                 IconButton(onPressed: (){},
//                     icon: const Icon(Icons.analytics, color: Colors.pink,),
//                 iconSize: 50,)
//
//
//               ],
//             ),
//           ),
//         ));
//   }
// }
