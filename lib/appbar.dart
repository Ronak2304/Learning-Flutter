import 'package:flutter/material.dart';

void main() {
  runApp(PehlaApp());
}

// Scaffold is used to create the structure of the app
class PehlaApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App ka title",
      // theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
          backgroundColor: Colors.amber,
          // centerTitle: true,
          titleSpacing: 50,
          foregroundColor: Colors.cyan,
          shadowColor: Colors.red,
          elevation: 5,
          // shape: Border.all(color: Colors.yellow),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          toolbarHeight: 50,
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.abc),
              tooltip: "menu",
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.settings),
              tooltip: "Comment kardo",
            )
          ],

          leading: IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.menu_outlined)),
          ),
        body: Center(child: Text("Body "),),
      ),
    );
  }
}