import 'package:flutter/material.dart';

void main() => runApp(Homepage());

// part 2
class Homepage extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Homepage'),
            leading: Icon(Icons.home),
            backgroundColor: Colors.green[800]),
        body: Container(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.network(
                    'https://flutter.io/images/homepage/header-illustration.png'),
                Text('Belajar Flutter')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
