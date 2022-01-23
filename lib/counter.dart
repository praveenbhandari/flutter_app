import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(cou());
  //da();
}

class cou extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<cou> {
  int counter = 0;
  Map data = {};

  @override
  Widget build(BuildContext context) {
    setState(() {
      data = ModalRoute.of(context).settings.arguments;
      print(data);
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading:
            IconButton(
              alignment: Alignment.topLeft,
              icon: Icon(Icons.arrow_back_ios) ,
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
            ),

          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Row(
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'TIME IS ' + data['time'],
                        style: TextStyle(fontSize: 50,color: Colors.white),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ],
              ),
            ),
//            Center(
//                child: Text(
//              ,
//            )),
          SizedBox(height: 160,),
            Text(
              "Times Clicked = $counter",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            FlatButton.icon(
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                icon: Icon(
                  Icons.refresh,
                ),
                label: Text(
                  "RESET COUNTER",
                )),
          ],
        ),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.green,
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter += 1;
              });
            }),
      ),
    );
  }
}
