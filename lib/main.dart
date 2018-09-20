import 'package:flutter/material.dart';
import './home.dart';
import './popular.dart';
import './news.dart';

void main() => runApp(MyTabs());

class MyTabs extends StatefulWidget {
  @override
  MyTabState createState() => MyTabState();
}

// part 3
class MyTabState extends State<MyTabs> with SingleTickerProviderStateMixin {
  // CONTROLLER
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  // Akhir Controller

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My Tab'),
              backgroundColor: Colors.red[800],
              bottom: TabBar(controller: controller, tabs: <Tab>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.note),
                ),
                Tab(
                  icon: Icon(Icons.poll),
                )
              ]),
            ),
            body: TabBarView(
                controller: controller,
                children: <Widget>[Home(), Popular(), News()])));
  }
}

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
            margin: EdgeInsets.all(10.00),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.archive),
                    Text(
                      'Artikel Terbaru',
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                          'https://flutter.io/images/homepage/header-illustration.png'),
                      Text('Belajar Flutter')
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
