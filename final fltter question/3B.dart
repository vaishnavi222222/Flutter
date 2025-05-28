import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
 appBar: AppBar(title: Text('Media Queries and Breakpoints')),
 body: MediaQuery.of(context).size.width > 600
 ? WideLayout()
 : NarrowLayout(),
 ),
 );
 }
}
class WideLayout extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Row(
 children: [
 Expanded(
 flex: 1,
 child: Container(color: Colors.blue, child: Center(child:
Text('Sidebar'))),
 ),
 Expanded(
 flex: 2,
 child: Container(color: Colors.green, child: Center(child:
Text('Main Content'))),
 ),
 ],
 );
 }
}
class NarrowLayout extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Column(
 children: [
 Container(
 height: 100,
 color: Colors.blue,
 child: Center(child: Text('Header')),
 ),
 Expanded(
 child: Container(color: Colors.green, child: Center(child:
Text('Main Content'))),
 ),
 ],
 );
 }
}