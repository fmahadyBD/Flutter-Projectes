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
      appBar: AppBar(title: const Text("Slide Bar")),
      body: Column(children: <Widget>[
        //
        //It is row 1 40% for screen
        Expanded(
          flex: 4,
          child: Container(
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: Text("Block 1"),
          ),
        ),
        //
        //It is row 2 40% for screen it will be more divider
        Expanded(
            //
            flex: 4,
            child: Row(
                //

                children: <Widget>[
                  //Inseider Expanded two clomom

                  Expanded(
                    //insider widget 5%
                    flex: 7,

                    child: Container(
                      alignment: Alignment.center,
                      //
                      color: Color.fromARGB(255, 143, 135, 60),
                      child: Text("Insider 70%"),
                    ),
                  ),

                  Expanded(
                      flex: 3,
                      //it is insider widget of 50%
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            //It is inside inside widget 1
                            child: Container(
                              alignment: Alignment.center,
                              color: Colors.brown,
                              child: Text("Inside Inseide 1"),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            //It is inside inside widget 2
                            child: Container(
                              alignment: Alignment.center,
                              color: Color.fromARGB(255, 138, 107, 223),
                              child: Text("Inside Inseide 2"),
                            ),
                          ),
                        ],
                      ))
                ])),
        //
        //It is row 3 20% for screen
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: Text("Block 3"),
          ),
        ),
      ]),
    );
  }
}
