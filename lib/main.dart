import 'package:flutter/material.dart';
import 'package:medicia/menu.dart';
import 'package:medicia/questionPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medic IA',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Medic IA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationCtrl;
  late Animation<double> scaleAnimation;
  late Animation<double> translateAnimation;

  @override
  void initState() {
    animationCtrl =
         AnimationController(duration: const Duration(seconds: 4), vsync: this);
    scaleAnimation = Tween<double>(begin: 0, end: -100).animate(animationCtrl);
    translateAnimation = Tween<double>(begin: -100, end: 0).animate(
        CurvedAnimation(parent: animationCtrl, curve: Curves.bounceOut));
    animationCtrl.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/menu.jpg", height: 300,width: 300,),
            const Text("En MEDIC nos preocupamos por tu bienestar", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            const Text("¡Estas listo para mejorar tu salud!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            Container(
              width: 120,
                child:IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> menuPage()));}, icon: Icon(Icons.layers_rounded), color: Colors.blueGrey[900], iconSize: 48.0,),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            )
           ],
        ),
      ),
      backgroundColor: Colors.white,
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
