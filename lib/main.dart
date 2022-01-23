import 'dart:convert';

import 'package:http/http.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'datae.dart';
import 'next.dart';
import 'counter.dart';

void main() {
  runApp(MyApp());
  //da();
}

String a="a";
Map data;

class MyApp extends StatelessWidget {
//  void net() async {
//    print("in func");
//    Response response =
//        await get('https://jsonplaceholder.typicode.com/todos/1');
//    data = jsonDecode(response.body);
//    print(response.body);
//    a = data as String;
//    print(data);
//  }

  // This widget is the root of your application.

  Map data={};
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
//      initialRoute: "/next",
      routes: {
        "/": (context) => content_data(),
        "/next": (context) => nex(),
        "/counter": (context) => cou(),
      },
      title: 'Flutter Again',
       //home: content_data(),
    );
  }
}

class content_data extends StatefulWidget {
  @override
  _content_dataState createState() => _content_dataState();
}

class _content_dataState extends State<content_data> {
  int dat = 00;
  List<datae> tet = [
    datae("Test 1", "Data 1"),
    datae("Test 2", "Data 2"),
    datae("Test 3", "Data 3"),
    datae("Test 4", "Data 4"),
    datae("Test 5", "Data 5"),
//    datae("Test 6","Data 6"),
//    datae("Test 7","Data 7"),
//    datae("Test 8","Data 8"),
//    datae("Test 9","Data 9"),
//    datae("Test 10","Data 10"),
//    datae("Test 11","Data 11"),
//    datae("Test 12","Data 12"),
//    datae("Test 13","Data 13"),
//    datae("Test 14","Data 14"),
//    datae("Test 15","Data 15"),
//    datae("Test 16","Data 16"),
//    datae("Test 17","Data 17"),
//    datae("Test 18","Data 18"),
//    datae("Test 19","Data 19"),
//    datae("Test 20","Data 20"),
  ];

  List<String> as = ["a", "b", "c", "d"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          title: Center(
            child: Text(
              "Once Again",
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: "indie",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 8),
            ),
          ),
        ),
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => nex()));
              },
              child: Text("Next Item"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => cou()));
              },
              child: Text("Counter"),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(a),
            ),
            //Text(data),
            Column(
                children: tet.map((qq) {
              return cardss(qq.test,
                  qq.dataa); //Text('${qq.test}',style:TextStyle(fontSize:50, color:Colors.white));
            }).toList()),
//        Column(  children: tet.map((qq){
//          return Text('${qq.dataa}',style:TextStyle(fontSize:50, color:Colors.white));
//        }).toList()),
          ],

          //<Widget>[
//
//          Center(
//            child:Text("TIMES CLICKED = "+"$dat",style:TextStyle(fontSize:30, color:Colors.white),),
////        child:TextField(
////keyboardType: TextInputType.number,
////
////        )
//
//
//
////        child: FlatButton(
////          child: Text("This"),
////        ),
//
////        child: FloatingActionButton(
////backgroundColor: Colors.red,
////          onPressed: (){},
////          child:Icon(
////            Icons.add,color: Colors.blueGrey,
////          )
////        ),
//
//
//
////        child: RaisedButton(
////          onPressed: () {},
////          color: Colors.greenAccent,
////          child: Padding(
////            padding: const EdgeInsets.all(20),
////            child: Text(
////              "test",
////              style: TextStyle(fontSize: 50),
////            ),
////          ),
////        ),
//
//
//
////        child:Icon(Icons.accessibility_new,color:Colors.blue[500],size: 100,),
//
////        child: FlatButton.icon(
////          onPressed: () {},
////          icon: Icon(Icons.accessibility_new, color: Colors.blue[500]),
////          label: Text("TEXT"),
////        ),
//
////        child: Text(
////          "TEST",
////          style: TextStyle(
////            fontSize: 40,
////            fontFamily: 'indie',
////            color: Colors.grey[800],
////            fontWeight: FontWeight.bold,
////            letterSpacing: 5,
////          ),
////        ),
//            //    child: Image.network('https://lh3.googleusercontent.com/X586EEyTkn_QE_l5Eog6L_R631PFiGebDv9DkvRg-k2Lv4x9BYe84K-pXU9LOsx1nA6OGYeatMM_Ly_E0XREabGR3YGT6I5EFfL6Ym378VjWlHSqTxHOQbLej1cpppcyXH1_xyrDoFRhZp5QBSD-CqGOCBCVwzULX0qZVXJgbwRmz9tGX084g_RpdFQsu7X5u-CXa9MaDiYnn8U6w1PgeiyQiW5imicitHaFVcUmGEkqjgo65-Hv-ug7PdRrKVh_IYaWGBCxPi1asiAlgz7ra6qPJJXl7KbiRjS7mH9K5GnvwCI-VtgnLZTedSrC-HZGe9qe-uCdm5uXoYoQQpPKyb_xrKXKk6Mdwi9x5rqceFhwNIjgxaAma_wfzkJvfS49ErD89BQsLaKt9TZvY3MgtpQaa6OmZ9DFl0K0E43LRo-VchqL7rOZbM8plA3Oqma1vIORXvBwa8SooG6Ay7FyCgOjKdECnVdff1hR-6afXMFTkEErfnrQoXLZI7tKuN8S26p6cjkgQjPpXzzhS6T2MSqSjtAdbvXnA0hhVnXZ5YgOIQXXmMoBmTC43m42edLGGj1r5L2e4oygTGK356YnK7S_PXHG2aDiLv-kF0QQMX2IyB84OevlygKzu3OLjCh28YDAW3uwHk9ySku9_jdpgs-lmoDQLoKHVmKeljAktdYZYyc7apHcyv1vvFBRoIA=w391-h695-no?authuser=0')
//          ),
//           FloatingActionButton(
//
//
//            child: Icon(Icons.add),
//            backgroundColor: Colors.grey[600],
//            foregroundColor: Colors.white,
//            onPressed:(){
//              setState(() {
//
//                dat +=1;
//
//              });
//
//            },
//
//          ),
          //  ],
        ));
  }
}

Widget cardss(test, data) {
  return Row(
    children: <Widget>[
      Card(
        margin: EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(test, style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
      Card(
        margin: EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(data, style: TextStyle(fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
