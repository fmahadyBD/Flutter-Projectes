import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registar")),
      body: Center(
        child: Container(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //
                //
                //
                //
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Enter email",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 2,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.lightGreenAccent,
                        width: 2,
                      ))),
                ),

                //
                //
                //
                //
                TextField(
                  obscureText: true,
                  decoration:
                      const InputDecoration(hintText: "Enter your Password"),
                ),

                //
                //
                //
                //
                TextButton(
                  onPressed: () {},
                  child: const Text("Register"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
