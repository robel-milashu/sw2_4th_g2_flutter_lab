import 'dart:developer';

import 'package:flutter/material.dart';

class StateFullCounter extends StatefulWidget {
  @override
  _StateFullCounterState createState() => _StateFullCounterState();
}

class _StateFullCounterState extends State<StateFullCounter> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("accountName"),
                accountEmail: Text(
                  "accountEmail",
                ),
                currentAccountPicture: CircleAvatar(
                  child: Text("A"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Software 4th"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Counting",
                style: TextStyle(fontSize: 50, color: Colors.green),
              ),
              Text(
                counter.toString(),
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(increment);
              log(counter.toString());
            }),
      ),
    );
  }

  increment() {
    counter = counter + 10;
  }
}
