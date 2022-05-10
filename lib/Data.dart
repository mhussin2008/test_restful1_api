import 'dart:convert';
import 'package:http/http.dart' as http;

 class MyData {
   static var data;
   static var listdata;
   static bool done=false;
   static var lngth=0;



   // get getdata {return data;}
   // int getlngth() {return lngth;}
   // get getlistdata{return listdata;}
   // get getdone {return done;}


   static Future<String> getData() async {
    Uri myUri =
    Uri.parse("https://jsonplaceholder.typicode.com/users/1/albums");
    var response =
    await http.get(myUri, headers: {"Accept": "application/json"});
    data = json.decode(response.body);
    print(data);
    done=true;
    print(done);
    listdata=data.toList();
    lngth=listdata.length;
    print(lngth);
    print(MyData.listdata[0]['title'].toString());
    return "Success";
  }

}