import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: AnimationPage(),
 );
 }
}
class AnimationPage extends StatefulWidget {
 @override
 _AnimationPageState createState() => _AnimationPageState();
}
class _AnimationPageState extends State<AnimationPage> with
SingleTickerProviderStateMixin {
 late AnimationController _controller;
 late Animation<double> _animation;
 @override
 void initState() {
 super.initState();
 _controller = AnimationController(
 duration: const Duration(seconds: 2),
 vsync: this,
 )..repeat(reverse: true);
 _animation = CurvedAnimation(parent: _controller, curve:
Curves.easeInOut);
 }
 @override
 void dispose() {
 _controller.dispose();
 super.dispose();
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('Animations')),
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 FadeTransition(
 opacity: _animation,
 child: Container(
 width: 200,
 height: 200,
 color: Colors.blue,
 child: Center(
 child: Text(
 'Fade Animation',
 style: TextStyle(color: Colors.white),
 ),
 ),
 ),
 ),
 SizedBox(height: 20),
 ScaleTransition(
 scale: _animation,
 child: Container(
 width: 100,
 height: 100,
 color: Colors.green,
 child: Center(
 child: Text(
 'Scale Animation',
 style: TextStyle(color: Colors.white),
 ),
 ),
 ),
 ),
 SizedBox(height: 20),
 SlideTransition(
 position: Tween<Offset>(
 begin: Offset(-1, 0),
 end: Offset(1, 0),
 ).animate(_animation),
 child: Container(
 width: 150,
 height: 50,
 color: Colors.red,
 child: Center(
 child: Text(
 'Slide Animation',
 style: TextStyle(color: Colors.white),
 ),
 ),
 ),
 ),
 ],
 ),
 ),
 );
 }
} 