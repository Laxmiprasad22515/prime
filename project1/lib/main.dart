import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kits',
      // to hide debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ), // ThemeData
      home: HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('IIICSE I SEM'),
        ), // AppBar
        body: Container(
          color: Colors.red,
          // Giving dimensions to parent Container
          // using MediaQuery
          // [container's height] = [(phone's height) / 2]
          // [container's width] = [phone's width]
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          // Aligning contents of this Container to center
          alignment: Alignment.center,
          child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) {
              return Container(
                color: Colors.green,
                // Aligning contents of this Container to center
                alignment: Alignment.center,
                // Using parent's constraints to calculate child's height and width
                height: constraints.maxHeight * 0.5,
                width: constraints.maxWidth * 0.5,
                child: Text(
                  'LayoutBuilder Widget',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ), // TextStyle
                ), // Text
              ); // Container
            },
          ), // LayoutBuilder
        ), // Container
      ), // Scaffold
    );
  }
}