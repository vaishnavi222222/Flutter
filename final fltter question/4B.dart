import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 initialRoute: '/',
 routes: {
 '/': (context) => HomeScreen(),
 '/details': (context) => DetailScreen(),
 },
 );
 }
}
class HomeScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('Home')),
 body: Center(
 child: ElevatedButton(
 child: Text('Go to Details'),
 onPressed: () {
 Navigator.pushNamed(context, '/details');
 },
 ),
 ),
 );
 }
}
class DetailScreen extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('Details')),
 body: Center(
 child: ElevatedButton(
 child: Text('Go back'),
 onPressed: () {
 Navigator.pop(context);
 },
 ),
 ),
 );
 } 
}