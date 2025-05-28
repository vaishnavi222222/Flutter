import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
 final String text;
 final VoidCallback onPressed;
 const CustomButton({
 Key? key,
 required this.text,
 required this.onPressed,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return ElevatedButton(
 onPressed: onPressed,
 style: ElevatedButton.styleFrom(
 backgroundColor: Colors.blue,
 foregroundColor: Colors.white,
 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
 shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(30),
 ),
 ),
 child: Text(
 text,
 style: TextStyle(fontSize: 18),
 ),
 );
 }
}
CUSTOM_CARD
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
 final String title;
 final String content;
 const CustomCard({
 Key? key,
 required this.title,
 required this.content,
 }) : super(key: key);
 @override
 Widget build(BuildContext context) {
 return Card(
 elevation: 4,
 shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(15),
 ),
 child: Padding(
 padding: EdgeInsets.all(16),
 child: Column(
 crossAxisAlignment: CrossAxisAlignment.start,
 children: [
 Text(
 title,
 style: TextStyle(
 fontSize: 20,
 fontWeight: FontWeight.bold,
 ),
 ),
 SizedBox(height: 8),
 Text(
 content,
 style: TextStyle(fontSize: 16),
 ),
 ],
 ),
 ),
 );
 }
}
MAIN
import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_card.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Custom Widgets Demo',
 theme: ThemeData(
 primarySwatch: Colors.blue,
 ),
 home: MyHomePage(title: 'Custom Widgets Demo'),
 );
 }
}
class MyHomePage extends StatefulWidget {
 MyHomePage({Key? key, required this.title}) : super(key: key);
 final String title;
 @override
 _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
 int _counter = 0;
 void _incrementCounter() {
 setState(() {
 _counter++;
 });
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text(widget.title),
 ),
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: <Widget>[
 CustomCard(
 title: 'Counter Card',
 content: 'You have pushed the button this many times:
$_counter',
 ),
 SizedBox(height: 20),
 CustomButton(
 text: 'Increment',
 onPressed: _incrementCounter,
 ),
 ],
 ),
 ),
 );
 }
}