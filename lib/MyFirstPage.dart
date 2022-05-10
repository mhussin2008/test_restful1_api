import 'package:flutter/material.dart';
import 'package:test_restfull_api/MyListView.dart';
import 'Data.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () async {
                var res=await MyData.getData();
                setState((){});
               },
              child: const Text('Fetch Data')),
          const SizedBox(height: 20,),

          ElevatedButton(onPressed:(MyData.done==true)? (){
            Navigator.push(    context,
              MaterialPageRoute(builder: (context) => const MyListView()),);}:null

              , child: Text('Go To Next Page'))
          //myWidget,
        ],

      ),
    );
  }
}
