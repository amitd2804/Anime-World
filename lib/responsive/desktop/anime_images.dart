


import 'package:anime01/animepage.dart';
import 'package:anime01/responsive/dropdown.dart';
import 'package:anime01/responsive/star_rating.dart';
import 'package:flutter/material.dart';

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
                  
 var hover_index;
 

   Widget animeImage(String txt, context) {
    var animeList = animes.keys.toList();
    
   return Container( 
    margin: const EdgeInsets.all(10),
     child: GridView.builder(
      itemCount: animeList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 5,
      childAspectRatio: 0.7
     ), itemBuilder: (context, index){
      print(animeList[index]);
      return Column( 
         children: [ 
           Row( 
             children: [
              Container(
              height: 350,
              width: 210,
              decoration: BoxDecoration(
              // border: Border.all(color: Colors.white,),
              borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 35, 34, 34),),
              borderRadius: BorderRadius.circular(15),
              
              image: DecorationImage(image: NetworkImage(
        animes[animeList[index].toString()]), fit: BoxFit.cover),
             ),
                      child: InkWell(
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
          title: "${animeList[index]}",),),);
              },
                      ),
                    ),
                    const SizedBox(height: 10,),
                     TextButton(
                      onPressed: (){
                      Navigator.push(
                      context, MaterialPageRoute(
                      builder:(context)=>AnimeScreen(
                      title: "${animeList[index]}",),),);
                      }, 
                      child:  Text(animeList[index],
                      style: const TextStyle(
                      fontWeight:FontWeight.bold,
                      color: Colors.red, fontSize: 20),
                       ),
                      ),
                      newDropdown(txt, context),
                      ratingStar(txt, context),
                  ],
              )
              ),
             ],
           ),
         ],
                );
     }),
   );
}
