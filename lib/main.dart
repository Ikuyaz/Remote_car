import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Remote Car'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();
  String _value = "Stop";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: const Text("Remote Car"),
        ),
        body: Column(children: [
          Container(
              height: 300,
              child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    ElevatedButton(
                        onPressed: _forward,
                        child: const Text("Forward",
                            style: TextStyle(fontSize: 17))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: _left,
                            child: const Text(
                              "Left",
                              style: TextStyle(fontSize: 17),
                            )),
                        ElevatedButton(
                          onPressed: _stop,
                          child: const Text("Stop",
                              style: TextStyle(fontSize: 17)),
                        ),
                        ElevatedButton(
                            onPressed: _right,
                            child: const Text("Right",
                                style: TextStyle(fontSize: 17)))
                      ],
                    ),
                    Center(
                      child: SizedBox(
                          width: 100,
                          child: ElevatedButton(
                              onPressed: _reverse,
                              child: const Text("Reverse",
                                  style: TextStyle(fontSize: 17)))),
                    ),
                  ]))),
          Text(
            _value,
            style: const TextStyle(
                fontSize: 18,
                decoration: TextDecoration.overline,
                fontWeight: FontWeight.bold),
          )
        ]));
  }

  void _forward() {
    print('Forward');
    setState(() {
      _value = "Forward";
    });
  }

  void _stop() {
    print('Stop');
    setState(() {
      _value = "Stop";
    });
  }

  void _reverse() {
    print('Reverse');
    setState(() {
      _value = "Reverse";
    });
  }

  void _left() {
    print('Left');
    setState(() {
      _value = "Left";
    });
  }

  void _right() {
    print('Right');
    setState(() {
      _value = "Right";
    });
  }
}
