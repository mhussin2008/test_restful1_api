import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_restfull_api/MyFirstPage.dart';
import 'package:test_restfull_api/MyListView.dart';
//import 'package:http/http.dart' as http;
import 'Data.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;





  @override
  Widget build(BuildContext context) {
    Widget myWidget;
    List<Widget> myList=[const Text('No Data')];


    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:MyFirstPage()

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
