


import 'dart:convert';
import 'package:anime01/animepage.dart';
import 'package:anime01/responsive/dropdown.dart';
import 'package:anime01/responsive/star_rating.dart';
import 'package:http/http.dart' as http;
import 'package:anime01/appbar/appbar.dart';
import 'package:flutter/material.dart';


class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
   Map animes = {
      "Crayon Shinchan" : "https://rukminim2.flixcart.com/image/850/1000/l4hcx3k0/movie/g/8/p/2010-dvd-walt-disney-co-india-p-ltd-hindi-shinchan-in-action-original-imagfdazpq3b52pg.jpeg?q=20", 
      "Jujutsu Kaisan": "https://japanresell.fr/cdn/shop/products/jujutsu-kaisen-complete-guide-1st-season-578539_716x1024.jpg?v=1678786942",
      "Naruto": "https://m.media-amazon.com/images/M/MV5BZmQ5NGFiNWEtMmMyMC00MDdiLTg4YjktOGY5Yzc2MDUxMTE1XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_FMjpg_UX1000_.jpg" ,
      "Goku" : "https://i.ebayimg.com/images/g/IkYAAOSwi4RdV-ET/s-l1600.jpg", 
      "Tokyo Revengers" : "https://i.ebayimg.com/images/g/AJ4AAOSwyV1kXzwE/s-l1200.jpg",
      "Great Ruler" : "https://m.media-amazon.com/images/M/MV5BNzA2ZGExZGItNDY5Mi00ZTJlLTk0YzMtN2U4MTk0NmRhYTNiXkEyXkFqcGdeQXVyNjMxMTE5NTY@._V1_FMjpg_UX1000_.jpg" ,
      "Akira" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmazINWtT7XEPzUG9ZLVVaVF-6_rVd8VXmIkwFsX-AJZiSMUue11WUs77Noi7QKcr6n8E&usqp=CAU", 
      "Vinland Sagaa" : "https://m.media-amazon.com/images/M/MV5BNzQwODI4Y2YtNjFmNC00NTExLWE0NzYtMTUzNjA0YzBhY2YyXkEyXkFqcGdeQXVyMTMxMTYzNDkz._V1_FMjpg_UX1000_.jpg", 
      "Martial Universe" : "https://m.media-amazon.com/images/M/MV5BMjJkM2FhMDItMDdhNy00ZDI5LTllZjItNDNiNWQzMzZmMWZiXkEyXkFqcGdeQXVyNTY4MjkyOTk@._V1_.jpg", 
      "Black Clover" : "https://openseauserdata.com/files/1e7a82c4485e11b8ea7bc9c76971054b.jpg",
      "Heavenly Delusion" : "https://m.media-amazon.com/images/I/81K-OTJEUdL._AC_UF1000,1000_QL80_.jpg", 
      "Love All Play" : "https://upload.wikimedia.org/wikipedia/en/a/af/Love_All_Play_novel_volume_1_cover.jpg", 
      "Aoashi" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC73tznqBtjMZU-Iu4yof5ykLAzdWjeRvOpwRnQ4Vq5f0WUJzuwfLox2ODVw92K7yFFH8&usqp=CAU",
      "Dororo" : "https://miro.medium.com/v2/resize:fit:680/1*bXq6jUP7hjXddTOpL8nSnw.jpeg", 
      "Doreamon" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfAj3JvR5f4RI4Gv67gLuTkfpEFGS9K1l4XCYPZF5abI-Vofh5D2QlbM12NlJ_b8Yn1AQ&usqp=CAU",
      "Kokkoku" : "https://i.ebayimg.com/images/g/L4kAAOSwhNNfQtAd/s-l1600.jpg", 
      "BananaFish" : "https://m.media-amazon.com/images/M/MV5BYWRkMDQzYTMtMzg2Mi00Mzc0LWIyZWEtMDRiOWJmOTAwYWIyXkEyXkFqcGdeQXVyMTUyNjc3NDQ4._V1_FMjpg_UX1000_.jpg", 
      "Boarding School" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXXsJ49NmtY8YN6GjUAjy71ms9tf5fX3nVsDRFIkG9XhywPOnVjepWdSE2e_C--xao50w&usqp=CAU", 
      "Semantic Error" : "https://cdn.myanimelist.net/images/manga/3/283149.jpg",
      "Bleach" : "https://upload.wikimedia.org/wikipedia/en/3/3f/Bleach_%28manga%29_1.png",
      "Spy X Family" : "https://i.redd.it/1izooiki2tw71.jpg",
      };
                  
                 
    var response;
  List imgs = [];
  var ph = 'https://media.tenor.com/Y0KQHSObFMsAAAAC/trippy-loading.gif';
  var height ;
  var width;
  var hover_index;
  
  get isHovered => null;
  @override
  void initState() {
      for(int p=0; p<animes.length; p++){
    imgs.add(ph);
  }
    response = "";
    height = 110;
    width = 180;
    hover_index = 0;
    super.initState();
  }         
  
  
  @override
  Widget build(BuildContext context) {  var animeList = animes.keys.toList();
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
        child: Column(
          children: [
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 2,
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: animes.length,
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 6),
                  itemBuilder: (context, index) {
                    fetchAnime(animes[index], index);

                     print(index);

                    return Container(
                      height: double.infinity, width: 125,
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                      border: Border.all(
                      color: Colors.black,),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                      image: NetworkImage(animes[animeList[index].toString()]),fit: BoxFit.cover),
                      ),
                    );
                  
                  },
                ),
              ),
            ),
            SizedBox(height: 28,
            child: Align( alignment: Alignment.centerLeft,
              child: Text('    View',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,color: Colors.white),),
                ),),

            
            Expanded(
              child: ListView.builder(
                itemCount: animes.length,
                itemBuilder: (context, index) {
                  print("Index: $index");
                  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160,
        decoration: BoxDecoration( border: Border.all(color: Colors.white24),
            borderRadius: BorderRadius.circular(15),
            color: Color.fromARGB(48, 11, 11, 11),),
            child: Row(
              children: [
                Container(height: 150, width: 120,
                margin: const EdgeInsets.only(left: 10),
                decoration:BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
                image: DecorationImage(
                      image: NetworkImage(
                      animes[animeList[index].toString()]),fit: BoxFit.cover),
                ),
                ),
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                    child: TextButton(
                    onPressed: (){
                    Navigator.push(
                    context, MaterialPageRoute(
                    builder:(context)=>AnimeScreen(
                    title: "${animeList[index]}",)));
                    }, 
                     child:  Text(animeList[index],
                      style: const TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,),
                      ),
                     ),
                    ),
                   ),
              Container( height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: ratingStar("app", context),
              ), 
              Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: newDropdown("app", context,),
              ),
              ],
              ),
              ],
      ),
      ),
    );
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

        imgs.add(jsonResponse['data'][0]['images']['jpg']['image_url']);
        
      });
      print("[title]: $title");
      // ignore: void_checks
      
      return jsonResponse['data'][0]['images']['jpg']['image_url'];

      
}
}

 

  