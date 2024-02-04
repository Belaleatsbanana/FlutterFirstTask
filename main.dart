import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int CountwithButton = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Hello Africa",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(

        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const Text('hello Text from on the left'),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                        ),
                        child: const Text('Middle text button'),
                      ),
                      Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(50.0),
                        child: const Text('container'),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      '$CountwithButton',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                CountwithButton++;
              });
            },
            backgroundColor: Colors.lightBlue,
            child: const Text('Add'),
          ),
          const SizedBox(width: 10), // Add some spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              setState(() {
                CountwithButton--;
              });
            },
            backgroundColor: Colors.lightBlue,
            child: const Text('Minus'),
          ),
        ],
      ),
    );
  }
}


