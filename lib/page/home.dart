import 'package:flutter/material.dart';
import 'barras.dart';
import 'inPendiente.dart';

import 'dart:async';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PageOne(),
    DisplayWidget(Colors.yellowAccent),
    DisplayWidget(Colors.purpleAccent)
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Barra de titulo'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          fixedColor: Colors.blue,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.alarm_off), title: Text('Invt concluido')),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_alarm), title: Text('Invt pendientes')),
            BottomNavigationBarItem(
                icon: Icon(Icons.cached), title: Text('reporte'))
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
