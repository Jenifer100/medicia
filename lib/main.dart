import 'package:flutter/material.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
                animation: animationCtrl,
                builder: (BuildContext context, _) => Transform.translate(
                      offset: Offset(0, translateAnimation.value),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const QuestionPage()));
                        },
                        child: Text(
                          'Diagnosticar',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.pink,
                          backgroundColor: Colors.pink,
                        ),
                      ),
                    ))
          ],
        ),
      ),
      backgroundColor: Colors.black87,
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Menu',
        child: const Icon(Icons.menu),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
