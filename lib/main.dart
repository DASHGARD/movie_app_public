import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:monday_project/pages/home.dart';


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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                child: Image.network("https://wallpaperaccess.com/full/14358.jpg",
                ),
                fit: BoxFit.fitHeight,
              )
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height/2.3
                ),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child:  Image.network(
                        'https://www.pngfind.com/pngs/m/29-298579_captain-marvel-icon-captain-marvel-star-logo-hd.png',
                        height: 100.0,
                        fit: BoxFit.cover,
                        width: 100.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text('Dashgard Movie',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10
                      ),
                      child: Text('Film Dengan Review Profesional',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 20
                      ),),
                    )
                  ],
                ),
              )
            )
          ],
        ),
      )
    );
  }
}
