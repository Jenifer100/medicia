import 'package:flutter/material.dart';
import 'package:medicia/Clases/radio_person.dart';
import 'package:medicia/resultPage.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

int? dolorabdo;
int? gripe;
int? fiebre;


class _QuestionPageState extends State<QuestionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black87,
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
            const  SizedBox(
                 height: 20,
               ),
                const Text("Dolor abdominal", style: TextStyle(fontSize: 18, color: Colors.white),),
                 RadioPerson(valor: dolorabdo),
               const Divider(),
                const Text("Gripe", style: TextStyle(fontSize: 18, color: Colors.white),),
                RadioPerson(valor: gripe,),
               const Divider(),
                const Text('Fiebre', style: TextStyle(fontSize: 18, color: Colors.white),),
                RadioPerson(valor: fiebre,)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Secoundpage()));
            },
            child: const Icon(
              Icons.navigate_next,
              color: Colors.pink,
            ),
            backgroundColor: Colors.black26,
          ),
        ));
  }
}
