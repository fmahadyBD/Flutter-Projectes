import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ctlr+ apace popp will show , statelew typpe
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const rootPage(),
    );
  }
}

class rootPage extends StatefulWidget {
  const rootPage({super.key});

  @override
  State<rootPage> createState() => _rootPageState();
}

// ignore: camel_case_types
class _rootPageState extends State<rootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Challenge"),
      ),
    );
  }
}
