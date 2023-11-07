import 'dart:convert';

import 'package:anime_world/appbar/appbar.dart';
import 'package:anime_world/responsive/tab_body.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../animepage.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);
  

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}



class _DesktopScreenState extends State<DesktopScreen> {
  List animes = ["Crayon Shinchan", "Jujutsu Kaisan", "Naruto", "Goku","Tokyo Revengers",
                 "Akira", "Vinland Sagaa", "Martial Universe", "Black Clover",
                 "Heavenly Delusion", "Love All Play", "Aoashi", "Dororo", "Doreamon",
                 "Kokkoku", "BananFish", "Boarding School", "Semantic Error","Bleach",
                 "Spy X Family",
                 ];
                 
  var response;
  var imgs;
   var height ;
  var width;
  var hover_index;
  @override
  void initState() {
    imgs = {};
    getAnime(animes);
     response = "";
    height = 180;
    width = 170;
    hover_index = 0;
    super.initState();

  }


  @override
  Widget build(BuildContext context){
    // var ph = '';
      for(int p=0; p<animes.length; p++){
      setState(() {
        // imgs[animes[p]]=ph;
      });
  }
    
    return Scaffold(
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
        margin: EdgeInsets.all(0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
          itemCount: animes.length,
         itemBuilder: (context, index){
          // fetchAnime(animes[index], index);
          // print("Index: $index");
          
          return Container(height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: 
          InkWell(
            onHover: (hover) {
                  print(index);
                  if(hover){
                   setState(() {
                   hover_index = index;
                   });
            }else{
             
            }
          },
           onTap: (){
            Navigator.push(
            context, MaterialPageRoute(
            builder:(context)=>AnimeScreen(
            title: "${animes[index]}",),),);
                },
            child: Column(children: [
              Image.network(imgs[animes[index]], height:200),
              SizedBox(height: 5,),
               TextButton(
                onPressed: (){
                Navigator.push(
                context, MaterialPageRoute(
                builder:(context)=>AnimeScreen(
                title: "${animes[index]}",),),);
                }, 
                child:  Text("${animes[index]}",
                style: const TextStyle(
                fontWeight:FontWeight.bold,
                color: Colors.red, fontSize: 20),
                 ),
                ),
                
            ]), 
          ),
          
          );
        }),
      )
    );
  }
  
  getAnime(animes) async{

    print("Function called!!");
    for(int p=0; p<animes.length; p++){
      var res = await http 
        .get(Uri.parse('https://api.jikan.moe/v4/anime?q={${animes[p]}}&sfw'),);
    var jsonResponse = jsonDecode((res.body));
    
      if(jsonResponse['data']!=null){
        setState(() {
        imgs[animes[p]] = jsonResponse['data'][0]['images']['jpg']['image_url'];
      });
      }
      
    }
    
  }
  @override
  void dispose() {
    imgs = {};
    super.dispose();
  }
}