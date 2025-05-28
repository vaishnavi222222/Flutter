import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
 appBar: AppBar(title: Text('Flutter Widgets')),
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 Text(
 'Hello, Flutter!',
 style: TextStyle(fontSize: 24, fontWeight:
FontWeight.bold),
 ),
 SizedBox(height: 20),
 Image.network(
 'https://picsum.photos/200',
 width: 200,
 height: 200,
 ),
 SizedBox(height: 20),
 Container(
 width: 150,
 height: 50,
 color: Colors.blue,
 child: Center(child: Text('Container')),
 ),
 ],
 ),
 ),
 ),
 );
 }
} 
