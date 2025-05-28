import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: FormPage(),
 );
 }
}
class FormPage extends StatefulWidget {
 @override
 _FormPageState createState() => _FormPageState();
}
class _FormPageState extends State<FormPage> {
 final _formKey = GlobalKey<FormState>();
 String _name = '';
 String _email = '';
 String _password = '';
 bool _subscribe = false;
 String _gender = '';
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('Form Design')),
 body: Padding(
 padding: EdgeInsets.all(16.0),
 child: Form(
 key: _formKey,
 child: ListView(
 children: [
 TextFormField(
 decoration: InputDecoration(labelText: 'Name'),
 validator: (value) {
 if (value == null || value.isEmpty) {
 return 'Please enter your name';
 }
 return null;
 },
 onSaved: (value) => _name = value!,
 ),
 TextFormField(
 decoration: InputDecoration(labelText: 'Email'),
 keyboardType: TextInputType.emailAddress,
 validator: (value) {
 if (value == null || value.isEmpty) {
 return 'Please enter your email';
 }
 if (!value.contains('@')) {
 return 'Please enter a valid email';
 }
 return null;
 },
 onSaved: (value) => _email = value!,
 ),
 TextFormField(
 decoration: InputDecoration(labelText: 'Password'),
 obscureText: true,
 validator: (value) {
 if (value == null || value.isEmpty) {
 return 'Please enter a password';
 }
 if (value.length < 6) {
 return 'Password must be at least 6 characters long';
 }
 return null;
 },
 onSaved: (value) => _password = value!,
 ),
 SwitchListTile(
 title: Text('Subscribe to newsletter'),
 value: _subscribe,
 onChanged: (bool value) {
 setState(() {
 _subscribe = value;
 });
 },
 ),
 Text('Gender:'),
 RadioListTile(
 title: Text('Male'),
 value: 'male',
 groupValue: _gender,
 onChanged: (value) {
 setState(() {
 _gender = value.toString();
 });
 },
 ),
 RadioListTile(
 title: Text('Female'),
 value: 'female',
 groupValue: _gender,
 onChanged: (value) {
 setState(() {
 _gender = value.toString();
 });
 },
 ),
 ElevatedButton(
 child: Text('Submit'),
 onPressed: () {
 if (_formKey.currentState!.validate()) {
 _formKey.currentState!.save();
 // Process the form data
 print('Name: $_name');
 print('Email: $_email');
 print('Password: $_password');
 print('Subscribe: $_subscribe');
 print('Gender: $_gender');
 }
 },
 ),
 ],
 ),
 ),
 ),
 );
 }
}