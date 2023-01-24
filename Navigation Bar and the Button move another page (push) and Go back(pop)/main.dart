import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_page.dart';

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

//ctrl+j for terminal
class rootPage extends StatefulWidget {
  const rootPage({super.key});

  @override
  State<rootPage> createState() => _rootPageState();
}

// ignore: camel_case_types
class _rootPageState extends State<rootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // if we will give the veriable in here, it will be chanced
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Challenge"),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('print it');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
        ],
        onDestinationSelected: (int indx) {
          setState(() {
            // for for Satefll widget,for refreash the pages
            currentPage = indx;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
