import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
 
  }
  class MyAppState extends State<MyApp> {
    double _numberFrom=0;

     @override
 void initState() {
 _numberFrom = 0; super.initState();
 }
  final List<String> _measures = [ 'meters',
 'kilometers', 'grams', 'kilograms', 'feet',
 'miles', 'pounds (lbs)', 'ounces',
 ];

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Measures Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Measures Converter'),
       
        ),
       
         body: Center( child: Column(
 children: [ TextField(
 onChanged: (text) {
 var rv = double.tryParse(text); if (rv != null) {
 setState(() {
 _numberFrom = rv;
 });
 }
 },
 ),Text((_numberFrom == null) ? '': _numberFrom.toString())
 ],
 ),
 ),
      ),
    );
  }
}
