import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      theme: ThemeData(),
      home: const Responsive(),
    );
  }
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 600) {
      return const Mobile();
    } else if (screenWidth > 600 && screenWidth <= 1200) {
      return const Tablet();
    } else {
      return const Desktop();
    }
  }
}

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => MobileState();
}

class MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MOBILE')),
      body: Center(
        child: Ink.image(
          image: const NetworkImage('https://via.placeholder.com/200'),
          width: 200,
          height: 200,
          fit: BoxFit.cover,
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Mobile image tapped!')),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => TabletState();
}

class TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TABLET')),
      body: Center(
        child: Ink.image(
          image: const NetworkImage('https://via.placeholder.com/300'),
          width: 300,
          height: 300,
          fit: BoxFit.cover,
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Tablet image tapped!')),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => DesktopState();
}

class DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DESKTOP')),
      body: const Center(
        child: Text('DESKTOP VIEW'),
      ),
    );
  }
}
