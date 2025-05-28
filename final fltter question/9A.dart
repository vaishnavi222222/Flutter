import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() {
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 home: APIFetchPage(),
 );
 }
}
class APIFetchPage extends StatefulWidget {
 @override
 _APIFetchPageState createState() => _APIFetchPageState();
}
class _APIFetchPageState extends State<APIFetchPage> {
 List<dynamic> _posts = [];
 bool _isLoading = false;
 @override
 void initState() {
 super.initState();
 _fetchPosts();
 }
 Future<void> _fetchPosts() async {
 setState(() {
 _isLoading = true;
 });
 try {
 final response = await
http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
 if (response.statusCode == 200) {
 setState(() {
 _posts = json.decode(response.body);
 _isLoading = false;
 });
 } else {
 throw Exception('Failed to load posts');
 }
 } catch (e) {
 setState(() {
 _isLoading = false;
 });
 print('Error: $e');
 }
 }
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(title: Text('API Fetch Example')),
 body: _isLoading
 ? Center(child: CircularProgressIndicator())
 : ListView.builder(
 itemCount: _posts.length,
 itemBuilder: (context, index) {
 final post = _posts[index];
 return ListTile(
 title: Text(post['title']),
 subtitle: Text(post['body']),
 );
 },
 ),
 );
 }
} 
