// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_bar_scanner/qrcode_scanner.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'barcode_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Scanner(),
    );
  }
}

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Qr-Bar Code Scanner App'),
        centerTitle: true,
      ),
      body:ListView(
        shrinkWrap: true,
        children:[
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>QRCode_Scanner()));
              }, child: Text('QR Code Scanner')),

          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>BarCode_Scanner()));
              }, child: Text('Bar Code Scanner')),
        ]
      )
     );
  }
}
