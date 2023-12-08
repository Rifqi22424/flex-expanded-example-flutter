import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex and Expanded Example'),
      ),
      body: Center(
        // Menggunakan Row dan Expanded untuk membuat widget responsif
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Widget pertama dengan flex 2
            Expanded(
              flex: 2,
              child: Container(
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Widget 1',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            // Widget kedua dengan flex 1
            Expanded(
              flex: 1,
              child: Container(
                height: 150,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Widget 2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
