import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class AnimeScreen extends StatefulWidget {
  
   AnimeScreen({super.key, this.title});
   final title;

  @override
  State<AnimeScreen> createState() => _AnimeScreenState();
}


class _AnimeScreenState extends State<AnimeScreen> {
var response;

List imgs = [];
  var ph = 'https://media.tenor.com/Y0KQHSObFMsAAAAC/trippy-loading.gif';
  var isLoading = false;
@override
  void initState() {
    fetchAnime(widget.title);
    
      Future.delayed(Duration(milliseconds: 2500), (){
        setState(() {
          isLoading = false;
        });
      });
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,
     appBar: AppBar(
        leading: Image.asset('assets/images/a_logo.png',),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
             
              child: Text("${widget.title}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28, color: Colors.deepOrangeAccent ),)),
          ),
          GridView.builder( padding: EdgeInsets.only(top: 10),
            shrinkWrap: true,
            itemCount: 25,
            itemBuilder: (context, index){
              if (response != null){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container( height: 280,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(response[index]['images']['jpg']['image_url'],)) 
                ,),),
            );
              }
              else{
                return Container(
                  height: 50,
                  width: 50,
                  child: Image.network(ph)
                ); 
              }
          }, gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),),
        ]),
      ),
    );
  }
  
  void fetchAnime(title) async { 
    var res = await http 
        .get(Uri.parse('https://api.jikan.moe/v4/anime?q={$title}&sfw'));
    var jsonResponse = jsonDecode((res.body));
      // ignore: void_checks
      print(jsonResponse['data'][0]);
      setState(() {
        response = jsonResponse['data'];
      });
      // return jsonResponse;
      return jsonResponse['data'][0]['images']['jpg']['image_url'];

}
}