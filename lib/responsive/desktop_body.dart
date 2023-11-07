
import 'package:anime_world/animepage.dart';
import 'package:anime_world/appbar/appbar.dart';
import 'package:anime_world/responsive/desktop/anime_images.dart';

import 'package:anime_world/responsive/dropdown.dart';
import 'package:flutter/material.dart';


class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);
  

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  List animes = ["Crayon Shinchan", "Jujutsu Kaisan", "Naruto", "Goku", "Tokyo Revengers",
                 "Great Ruler", "Akira", "Vinland Sagaa", "Martial Universe", 
                 "Black Clover","Heavenly Delusion", "Love All Play", "Aoashi",
                  "Dororo", "Doreamon","Kokkoku", "BananFish", "Boarding School", 
                  "Semantic Error","Bleach","Spy X Family",];
                 
                 
  var response;
  List imgs = [];
  var ph = 'https://media.tenor.com/Y0KQHSObFMsAAAAC/trippy-loading.gif';
  var height ;
  var width;
  var hover_index;
  
  @override
  void initState() {
      for(int p=0; p<animes.length; p++){
    imgs.add(ph);
  }
    response = "";
    height = 180;
    width = 170;
    hover_index = 0;
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // backgroundColor: defaultBackgroundColor,
      appBar: appbar(context),
      drawer: myDrawer(context),
      
      
      body: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: <Color>
              [Color.fromARGB(255, 0, 0, 0), 
               Color.fromARGB(255, 101, 7, 7),
               Color.fromARGB(255, 0, 0, 0),
              ]
              ),
            ),
      child: animeImage("app", context),
     ),
      );
  }

}