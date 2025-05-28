import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
 runApp(
 ChangeNotifierProvider(
 create: (context) => CounterModel(),
 child: MyApp(),
 ),
 );
}
class CounterModel extends ChangeNotifier {
 int _count = 0;
 int get count => _count;
 void increment() {
 _count++;
 notifyListeners();
 }
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: Scaffold(
 appBar: AppBar(title: Text('State Management')),
 body: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
 SetStateExample(),
 SizedBox(height: 20),
 ProviderExample(),
 ],
 ),
 ),
 );
 }
}
class SetStateExample extends StatefulWidget {
 @override
 _SetStateExampleState createState() => _SetStateExampleState();
}
class _SetStateExampleState extends State<SetStateExample> {
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
 color: Colors.blue[100],
 child: Column(
 children: [
 Text('setState Example'),
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
class ProviderExample extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Container(
 padding: EdgeInsets.all(20),
 color: Colors.green[100],
 child: Column(
 children: [
 Text('Provider Example'),
 Consumer<CounterModel>(
 builder: (context, counter, child) {
 return Text('Counter: ${counter.count}');
 },
 ),
 ElevatedButton(
 onPressed: () {
 Provider.of<CounterModel>(context, listen:
false).increment();
 },
 child: Text('Increment'),
 ),
 ],
 ),
 );
 }
} 
