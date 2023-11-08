


import 'package:anime01/loginpage/loginbox.dart';
import 'package:anime01/myintro/intropage.dart';
import 'package:flutter/material.dart';


var appBarColor =  const Color.fromARGB(255, 26, 20, 20);

PreferredSizeWidget appbar(BuildContext context) {
  return AppBar(
          title: Image.asset('assets/images/a_logo.png', fit: BoxFit.cover,),
          flexibleSpace: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Colors.black,
            Colors.red,
            Colors.black87]
          ),
          ),
        ),
      );
}
var drawerTextColor = const TextStyle(
          color: Color.fromARGB(255, 145, 43, 43),
        );
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 5);
    
Widget myDrawer(context) {
  return Drawer(
  // backgroundColor: const Color.fromARGB(255, 0, 0, 0), shadowColor: Colors.blueAccent,
  // elevation: 2,
          child: Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          colors: <Color>
              [Color.fromARGB(255, 0, 0, 0), 
               Color.fromARGB(255, 0, 0, 0),
               Color.fromARGB(255, 101, 7, 7),
              ]
              ),
            ),
        
          child: Column(
          children: [
          const DrawerHeader( padding: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
              image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQE5P_MHzeEEojcbNYkf9YhqVm8p4f55v8wQ&usqp=CAU'),
              fit: BoxFit.cover,),
            ),
            child: Image(
              image: AssetImage('assets/images/a_logo.png'),
              color: Color.fromARGB(255, 101, 7, 7),
              fit: BoxFit.cover,),
        
      ),
          ElevatedButton(
            style: ButtonStyle(
            
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: const BorderSide(color: Color.fromARGB(108, 1, 1, 1))))),
            onPressed: () {
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => IntroPage()),
                 );
                },
            child: Padding(
            padding: tilePadding,
            child:  ListTile(
            leading:Image.asset('assets/images/a_logo.png', fit: BoxFit.cover,),
            title: const Text (
              'The One Who Made It',
              style:TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                ),
            ),subtitle: const Text('Some Info....',
            style: TextStyle(
              color: Colors.white,
          
            ),),
                  ),
                ),
          ),
      
          const Divider(color: Colors.grey, height: 20, thickness: 2.5,indent: 25, endIndent: 25,),
          const SizedBox(height: 10,),
         
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column( 
                children: [
                  loginBox("app", context),
      //     Padding(
      //     padding: tilePadding,
      //     child: const ListTile(
      //     leading: Icon(Icons.share,color: Colors.white,),
      //     title: Text(
      //       'C A R T O O N   S E R I E S',
      //        style:TextStyle(fontWeight: FontWeight.bold,
      //       color: Colors.white),
      //     ),subtitle: Text('Anime & CartoonShows',
      //       style: TextStyle(
      //       fontWeight: FontWeight.w400,
      //       color: Colors.white54,
      //       fontSize: 11),),
      //   ),
      // ),
         
      const Padding(
        padding: EdgeInsets.only(left: 70),
          child: ListTile( 
          leading: Icon(Icons.logout,color: Colors.white,),
          title: Text('LOGOUT',
          style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ),
      ),),
      ],
  ),
  ),
  ],
  ),
  )       
);
}