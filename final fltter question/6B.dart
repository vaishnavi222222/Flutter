import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 theme: ThemeData(
 primarySwatch: Colors.blue,
 colorScheme: ColorScheme.fromSwatch().copyWith(secondary:
Colors.orange), // Updated accentColor
 textTheme: TextTheme(
 headlineLarge: TextStyle(fontSize: 24, fontWeight:
FontWeight.bold), // Updated text style
 bodyLarge: TextStyle(fontSize: 16, color: Colors.grey[800]), //
Updated text style
 ),
 elevatedButtonTheme: ElevatedButtonThemeData(
 style: ElevatedButton.styleFrom(
 backgroundColor: Colors.blue, // Background color for
ElevatedButton
 shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(20),
 ),
 ),
 ),
 ),
 home: HomePage(),
 );
 }
}
class HomePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('Themes and Styles')),
 body: Center(
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 Text(
 'Welcome to Styled App',
 style: Theme.of(context).textTheme.headlineLarge,
 ),
 SizedBox(height: 20),
 Text(
 'This is a body text with custom style.',
 style: Theme.of(context).textTheme.bodyLarge,
 ),
 SizedBox(height: 20),
 ElevatedButton(
 child: Text('Styled Button',style: TextStyle(color:
Colors.white),),
 onPressed: () {},
 ),
 SizedBox(height: 20),
 Container(
 width: 200,
 height: 100,
 decoration: BoxDecoration(
 color: Theme.of(context).colorScheme.secondary, // Updated
accent color usage
 borderRadius: BorderRadius.circular(10),
 boxShadow: [
 BoxShadow(
 color: Colors.grey.withOpacity(0.5),
 spreadRadius: 2,
 blurRadius: 5,
 offset: Offset(0, 3),
 ),
 ],
 ),
 child: Center(
 child: Text(
 'Custom Container',
 style: TextStyle(color: Colors.white),
 ),
 ),
 ),
 ],
 ),
 ),
 );
 }
}
