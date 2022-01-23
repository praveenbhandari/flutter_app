import 'package:flutter_take_1/counter.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  print("next page loaded");
  nex();
  //da();
}
class nex extends StatefulWidget {

  @override
  _nexState createState() => _nexState();



}

class _nexState extends State<nex> {
  String tim= "Loading";
  void net() async {

//    String a = await Future.delayed(Duration(seconds: 3),(){return "SOMETHING";});
//    print(a);

      //print("in func");
      Response response = await get('http://worldtimeapi.org/api/timezone/Asia/Kolkata');
      Map data = jsonDecode(response.body);
      //  print(response.body);
      // print(data);
      //print(data['datetime']);
      String date = data['datetime'];
      String offset = data['utc_offset'].substring(1, 2);
//    print(date);
//    print(offset);
      DateTime now = DateTime.parse(date);
      // print(now);
      now = await now.add(Duration(hours: int.parse(offset)));
      print(now);
      tim =DateFormat.jm().format(now);
     Navigator.pushReplacementNamed(context, '/counter',arguments: {"time":tim} );




  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    net();
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("next page"),
          backgroundColor: Colors.grey[700],
        ),
        backgroundColor: Colors.grey[400],
        body: Center(child: Text(tim,style: TextStyle(fontSize: 20),)),
      ),
    );
  }
}

