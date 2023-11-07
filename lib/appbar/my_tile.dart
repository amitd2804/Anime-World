import 'package:flutter/material.dart';
class MyTile extends StatelessWidget {
  final thumbnail ;
  const MyTile( {super.key, this.thumbnail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.black45),
            child: Row(
              children: [
                Container(height: 140, width: 100,
                margin: const EdgeInsets.only(left: 10),
                decoration:BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
                
                ),
                 child: Image.network("$thumbnail",),
                ),
              ],
            )
      ),
    );
  }
}