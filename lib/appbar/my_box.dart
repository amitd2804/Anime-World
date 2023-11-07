import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final thumbnail ;
  const MyBox({super.key,  this.thumbnail});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
          padding: const EdgeInsets.all(4),
            child: Container( height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 0, 255, 0),
                
              ),
              child: Image.network("$thumbnail",),
            ),
          );
  }
}