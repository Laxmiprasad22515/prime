import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:Text("Flutter Container Example"),
          ),
          body:Container(
            padding: EdgeInsets.all(35),
            margin: EdgeInsets.all(20),
            decoration:BoxDecoration(
              border: Border.all(color:Color.fromARGB(255, 0, 0, 0),width:4),
              borderRadius: BorderRadius.circular(8),
              boxShadow:[
                new BoxShadow(
                  color:Color.fromARGB(255, 182, 236, 96),
                  offset:new Offset(6.0,6.0),
                ),
              ],
            ),
            child:Text("Hello! I am Madishetti Rajender 22281A0509 ",
            style:TextStyle(fontSize:30)),
            
        ),
      ),
    );
        }
}