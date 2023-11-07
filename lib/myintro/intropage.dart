// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPage();
}

class _IntroPage extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,
     appBar:  AppBar(
          title: Image.asset('assets/images/a_logo.png', fit: BoxFit.cover,),
          flexibleSpace: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color.fromARGB(255, 77, 8, 8),
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(221, 99, 10, 10)]
          ),
          ),
        ),
      ),
       body: SingleChildScrollView(
         child: Column(
          children:<Widget>[
            Row( 
              children: [
                Container(
                  height: 500,
                  width: 840, decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: <Color>
              [Color.fromARGB(255, 0, 0, 0), 
               Color.fromARGB(255, 147, 18, 18),
               Color.fromARGB(255, 0, 0, 0),
              ]
              ),
            ),
                 
                  padding: EdgeInsets.only(left: 50),
              child: Column(children: [
                Row(
                  children: [
                    Container( margin: EdgeInsets.all(10), padding: EdgeInsets.all(15),
                    height: 200, width: 400,
                    decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Colors.white,
                    //   ),
                      borderRadius: BorderRadius.circular(20)),
                     
                      child: RichText( textAlign: TextAlign.left,
  text: TextSpan(
    text: 'H e l l o   Y , a l l \n',
    style: GoogleFonts.akshar(fontSize: 25,color: Colors.white),
    children: <TextSpan>[
      TextSpan(
        text: 'I  a m \n',
        style: GoogleFonts.akshar(fontSize: 20,color: Colors.white)),
         TextSpan(
        text: 'A M I T / 아 미 트 \n',
        style: GoogleFonts.merienda(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 17, 0))),
      TextSpan(
        text: 'F L U T T E R  D E V E L O P E R',
        style:  GoogleFonts.alice(fontSize: 22,color: const Color.fromARGB(255, 255, 0, 0),)),
      // TextSpan(
      //   text: 'FLUTTER',
      //   style:  GoogleFonts.akshar(fontSize: 28,color: Colors.blueAccent,)),
      
    ],
  ),
), 
),
        SizedBox(height: 50,),
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
           image: DecorationImage(
            image: NetworkImage(
            'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-1024.png'),
           fit: BoxFit.fitHeight, ), 
          ),
         ),
                  ],
                ),
        Container(
          height: 80,
          width: double.infinity,
          color: const Color.fromARGB(0, 255, 193, 7),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network('https://cdn2.iconfinder.com/data/icons/social-icons-32/512/GITHUB-1024.png',
              fit: BoxFit.cover, height: 28,),
            ),
             Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network('https://cdn2.iconfinder.com/data/icons/free-social-media-16/24/LinkedIn-1024.png',
              fit: BoxFit.cover, height: 28,),
            ),
             Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network('https://cdn3.iconfinder.com/data/icons/transparent-on-dark-grey/500/icon-04-1024.png',
              fit: BoxFit.cover, height: 28,),
            ),
             Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network('https://cdn3.iconfinder.com/data/icons/transparent-on-dark-grey/500/icon-02-1024.png',
              fit: BoxFit.cover, height: 28,),
            ),
             Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network('https://cdn3.iconfinder.com/data/icons/transparent-on-dark-grey/500/icon-05-1024.png',
              fit: BoxFit.cover, height: 28,),
            ),
             Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network('https://cdn3.iconfinder.com/data/icons/transparent-on-dark-grey/500/icon-03-512.png',
              fit: BoxFit.cover, height: 28,),
            ),
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.network('https://cdn1.iconfinder.com/data/icons/black-socicons/512/whatsapp-1024.png',
              fit: BoxFit.cover, height: 28,),
            ),
           ],
          ),
          ),
                 
                ],
                ),
                ),
                Container( 
                  height: 500, width: 280,
                  margin: EdgeInsets.only(left: 150),
                  decoration: BoxDecoration( 
                    // color: Colors.deepOrange,
                    image: DecorationImage(image: AssetImage('assets/images/gojo.png',),
                    alignment: Alignment.topRight, fit: BoxFit.cover,),
                    
                  ),
                ),
              ],
            ),
          ],
       
         ),
       ),
       );
}

 
}