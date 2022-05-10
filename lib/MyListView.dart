import 'package:flutter/material.dart';
import 'Data.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MyData.lngth);
    print(MyData.listdata);
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: ListView.separated(
          itemCount: MyData.lngth,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(MyData.listdata[index]['title'].toString()),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(MyData.listdata[index]['title'].toString())
                    ,behavior: SnackBarBehavior.floating,
                    )

                );
              },
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ));
  }
}
