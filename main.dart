import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Arief Dwi Setiawan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Arief Dwi Setiawan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> widgetList = ['1', '2', '3', '4', '5', '6', '7', '8'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container( 
        child: new GridView.count(
           crossAxisCount: 4, 
           controller: new ScrollController(keepScrollOffset: false), 
           shrinkWrap: true, 
           scrollDirection: Axis.vertical, 
           children: widgetList.map((String value) {
              return new Container( height: 30.30, 
              color: Colors.green, 
              margin: new EdgeInsets.all(1.0), 
              child: new Center( child: new Text(
                 value, 
                 style: new TextStyle(fontSize: 50.0,color: Colors.white), 
                ), 
              ), 
            ); 
          }).toList(), 
        ), 
      ), 
    ); 
  } 
}
