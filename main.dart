//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:math';

Map<int, String> seat = {
};
List<dynamic> widgetlist = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24];
List<dynamic> seat_list = [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,T,U,V,W,S,Y,Z,z];
var A= TextEditingController();
var B= TextEditingController();
var C= TextEditingController();
var D= TextEditingController();
var E= TextEditingController();
var F= TextEditingController();
var G= TextEditingController();
var H= TextEditingController();
var I= TextEditingController();
var J= TextEditingController();
var K= TextEditingController();
var L= TextEditingController();
var M= TextEditingController();
var N= TextEditingController();
var O= TextEditingController();
var P= TextEditingController();
var Q= TextEditingController();
var R= TextEditingController();
var S= TextEditingController();
var T= TextEditingController();
var U= TextEditingController();
var V= TextEditingController();
var W= TextEditingController();
var Y= TextEditingController();
var Z= TextEditingController();
var z= TextEditingController();

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Feel So Good'),
        ),
        body:
        Column(
    children: [
      Container(
        height: 75,
        child: Text('칠판',
            style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
      ),
      GridView.count(
          shrinkWrap: true,
        crossAxisCount: 5,
        childAspectRatio: (10/ 4),
        children: [
          for(var i in widgetlist) widget_test(i)
        ]
      ),
      TextField(
          controller: seat_list[25],
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(30, 3, 30, 0)
          ),
          onSubmitted: (val) async {
            setState(() {
              String name = seat_list[25].text;
              seat[25] = name;
              seat.forEach((key, value) {
                print('key: $key, value: $value');
              });
            });
          }
      ),
      ElevatedButton(
        onPressed: (){
          setState(() {
            String input = seat_list[25].text;
            main_head(input);
            seat.forEach((key, value) {
              print('key: $key, value: $value');
            });
          });
        },
        child: Text('Update'),
      )
    ]
    )
        );
  }
}



class widget_test extends StatefulWidget {
  final int position;

  const widget_test(var this.position);

  @override
  State<widget_test> createState() => _widget_testState();
}

class _widget_testState extends State<widget_test> {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(20,7,20,7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black, width: 3)
        ),
        child:
            Column(
          children: [
        Column(
          children: [
            Text(
                '${widget.position}.${seat[widget.position]}',
                style: TextStyle(fontSize:25,fontWeight: FontWeight.bold)
            ),
        ]
          ),
            SizedBox(
              height:10
            ),
            TextField(
              controller: seat_list[widget.position],
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                labelText: '이름 입력',
                hintText: '',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: Colors.blueAccent),

                ),
              ),
              textInputAction: TextInputAction.done,
               onSubmitted: (val) async {
                 setState(() {
                   String name = seat_list[widget.position].text;
                   seat[widget.position] = name;
                   seat.forEach((key, value) {
                     print('key: $key, value: $value');
                   });
                });
                 }
              )
      ],
        )
    );
  }
}

main_head (you){
    number_control(seat, you);
    seat.forEach((key, value) {
      print('key: $key, value: $value');
    });
  seat.forEach((key, value) {
    print('key: $key, value: $value');
  });
  print(seat.length);
}

number_control (seat, you) async {
  int you_num = Random().nextInt(24) + 1;
  if(seat.containsKey(you_num) == false){
    seat[you_num] = you;
  }
  else{
    number_control(seat, you);
  }
}