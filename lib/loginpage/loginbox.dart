// ignore: avoid_web_libraries_in_flutter



import 'package:anime01/loginpage/loginpage.dart';
import 'package:flutter/material.dart';

Widget loginBox(String txt, context) { 
 return SingleChildScrollView(
   child: Column(
     children: [
       Container( 
            height: 50, width: 280,
            child: const SizedBox( height: 18, width: 200,
            child: TextField( 
            autocorrect: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
            hintText: 'First Name',
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),
            filled: true,
            fillColor:  Color.fromARGB(91, 145, 43, 43),
            enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 1, 1, 1), width: 2),),
            focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          ),
          ),
          ),
               SizedBox(height: 5,),
               Container(
                  height: 50, width: 280,
                  child: const SizedBox( height: 18, width: 200,
                  child: TextField( 
                  autocorrect: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),
                  filled: true,
                  fillColor:  Color.fromARGB(91, 145, 43, 43),
                  enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 1, 1, 1), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                ),
                ),
              ),
                  SizedBox(height: 10,),
                  
                  SizedBox( height: 40, width: 180,
                    child: ElevatedButton(
                     onPressed: () {},
                     style: ElevatedButton.styleFrom(elevation: 10,
                     backgroundColor:  Color.fromARGB(43, 145, 43, 43),
                     side: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1,),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
               Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                 TextButton(
                 onPressed: () {
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => LoginPage()),
                 );
                },
                child: const Text(
                'Create New Account',
                style: TextStyle(
                color: Colors.white70),),),
                const VerticalDivider(
                  thickness: 1, 
                  color: Color.fromARGB(255, 255, 255, 255),
                  indent: 10,
                  endIndent: 10,),
                TextButton(
                onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) =>  const LoginPage()));
                },
                child: const Text(
                'Forget Password?',
                style: TextStyle(
                color: Colors.white70),),),
            ],
            ),
     ],
   ),
 );
}