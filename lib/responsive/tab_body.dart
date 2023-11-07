// import 'package:anime_world/appbar/appbar.dart';
import 'dart:convert';

import 'package:anime01/appbar/appbar.dart';
import 'package:anime01/appbar/my_box.dart';
import 'package:anime01/responsive/dropdown.dart';
import 'package:http/http.dart' as http;
import 'package:anime01/appbar/my_tile.dart';
import 'package:flutter/material.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  List animes = ["Crayon Shinchan", "Jujutsu Kaisan", "Naruto", "Goku", "Tokyo Revengers",
                 "Great Ruler", "Akira", "Vinland Sagaa", "Martial Universe", 
                 "Black Clover","Heavenly Delusion", "Love All Play", "Aoashi",
                  "Dororo", "Doreamon","Kokkoku", "BananFish", "Boarding School", 
                  "Semantic Error","Bleach",];
                  
                    @override
                    Widget build(BuildContext context) {
                      // TODO: implement build
                      throw UnimplementedError();
                    }
                 
                 
 
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: defaultBackgroundColor,
      appBar: appbar(context),
      drawer: myDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return  const MyTile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
void fetchAnime(title, index) async { 
    var res = await http 
        .get(Uri.parse('https://api.jikan.moe/v4/anime?q={$title}&sfw'));
    var jsonResponse = jsonDecode((res.body));
      // ignore: void_checks
      // print(jsonResponse['data'][0]['images']['jpg']['image_url']);
      
      // return jsonResponse;
      setState(() {
        var imgs;
        imgs[index]=(jsonResponse['data'][0]['images']['jpg']['image_url']);
        
      });
      // ignore: void_checks
      return jsonResponse['data'][0]['images']['jpg']['image_url'];

      
}
