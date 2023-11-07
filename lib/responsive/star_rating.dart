import 'package:anime_world/responsive/dropdown.dart';
import 'package:flutter/material.dart';

var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;


  @override
  Widget ratingStar(String txt, context) {
    return  Container(
          child:  Row( 
              children: <Widget>[
                IconButton(icon: Icon(Icons.star),iconSize: 15,
                  onPressed: ()=>setState((){
                    _myColorOne=Colors.orange;
                    _myColorTwo=Colors.cyan;
                    _myColorThree=Colors.cyan;
                    _myColorFour=Colors.cyan;
                    _myColorFive=Colors.cyan;
                }),color: _myColorOne,),
                IconButton(icon: Icon(Icons.star),iconSize: 15,
                  onPressed: ()=>setState((){
                    _myColorOne=Colors.orange;
                    _myColorTwo=Colors.orange;
                    _myColorThree=Colors.grey;
                    _myColorFour=Colors.grey;
                    _myColorFive=Colors.grey;
                }),color: _myColorTwo,),
                IconButton(icon: Icon(Icons.star),iconSize: 15,
                 onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.grey;
                  _myColorFive=Colors.grey;
                }),color: _myColorThree,),
                IconButton(icon: Icon(Icons.star),iconSize: 15,
                 onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.orange;
                  _myColorFive=Colors.grey;
                }),color: _myColorFour,),
                IconButton(icon: Icon(Icons.star),iconSize: 15,
                 onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.orange;
                  _myColorFive=Colors.orange;
                }),color: _myColorFive,),
              ],

          ),
      );
  }