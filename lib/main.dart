// import 'dart:convert' as convert;
import 'dart:convert';

import 'package:anime01/responsive/desktop_body.dart';
import 'package:anime01/responsive/mobile_body.dart';
import 'package:anime01/responsive/responsive_layout.dart';
import 'package:anime01/responsive/tab_body.dart';
import 'package:anime01/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  var response;

  @override
  initState(){
    fetchAnime();
    super.initState();
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   }
  //   );
  // }
  @override
  Widget build(BuildContext context) {
   return const SingleChildScrollView(
     child: Scaffold(
      
       
      ),
   );
  }
  void fetchAnime() async { 
    var res = await http 
        .get(Uri.parse('https://api.jikan.moe/v4/anime?q=$context&sfw'));
    var jsonResponse = jsonDecode((res.body));
      // ignore: void_checks
      print(jsonResponse['data'][0]);
      setState(() {
        response = jsonResponse['data'][0]['images']['jpg']['image_url'];
      });
      // return jsonResponse;

}
}