import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
 appBar: AppBar(title: Text('Stateful vs Stateless')),
 body: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 StatelessExample(),
 SizedBox(height: 20),
 StatefulExample(),
 ],
 ),
 ),
 );
 }
}
class StatelessExample extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Container(
 padding: EdgeInsets.all(20),
 color: Colors.blue[100],
 child: Text('Stateless Widget'),
 );
 }
}
class StatefulExample extends StatefulWidget {
 @override
 _StatefulExampleState createState() => _StatefulExampleState();
}
class _StatefulExampleState extends State<StatefulExample> {
 int _counter = 0;
 void _incrementCounter() {
 setState(() {
 _counter++;
 });
 }
 @override
 Widget build(BuildContext context) {
 return Container(
 padding: EdgeInsets.all(20),
 color: Colors.green[100],
 child: Column(
 children: [
 Text('Stateful Widget'),
 Text('Counter: $_counter'),
 ElevatedButton(
 onPressed: _incrementCounter,
 child: Text('Increment'),
 ),
 ],
 ),
 );
 } 
}