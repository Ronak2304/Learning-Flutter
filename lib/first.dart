import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: "Pehla pehla app hai mera",
    home: Scaffold(
      appBar: AppBar(
        title: Text("AppBar ka title"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Text("Hello world",textAlign: TextAlign.end),
    ),
  ));
}