


import 'package:flutter/material.dart';
String? dropdownValue;
Widget newDropdown(String txt, context) { 
 return DropdownButton(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 15, 
                  dropdownColor: Color.fromARGB(241, 98, 7, 7),
                  hint: const Text('Watch Options', style: TextStyle(fontSize: 15, color: Colors.red),),
                   icon: const Icon(Icons.live_tv_rounded, color: Colors.red, size: 22,),
             
              items: const [
                DropdownMenuItem(
                child: Row(
                children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                  'https://images.ctfassets.net/y2ske730sjqp/5QQ9SVIdc1tmkqrtFnG9U1/de758bba0f65dcc1c6bc1f31f161003d/BrandAssets_Logos_02-NSymbol.jpg?w=940'),
                  ), SizedBox(width: 20,), 
                  Text('Netflix', style: TextStyle(color: Colors.white),),
                  ],
                  ),
                  value: 1,
                  ),
                DropdownMenuItem(
                child: Row( 
                children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/019/040/292/original/amazon-prime-video-logo-editorial-free-vector.jpg'),
                  ), SizedBox(width: 20,),
                  Text('Amazon Prime', style: TextStyle(color: Colors.white),),
                  ],
                  ),
                  value: 2,
                  ),
                DropdownMenuItem(
                child: Row(
                children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                  'https://www.91-cdn.com/hub/wp-content/uploads/2023/05/disney-plus-hotstar-subscriber-base.jpg'),
                  ),SizedBox(width: 20,),
                  Text('Disney Hotstar', style: TextStyle(color: Colors.white),),
                  ],
                  ),
                  value: 3,
                  ),
                DropdownMenuItem(
                child: Row(
                children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl3eO7FMTRJ202lh-HsfdGl3cghEuJ9gIH1g&usqp=CAU'),
                  ),SizedBox(width: 20,),
                  Text('YouTube', style: TextStyle(color: Colors.white),),
                  ],
                  ),
                  value: 4,
                ),
                DropdownMenuItem( 
                child: Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Icon(Icons.add_circle_outline,size: 15,color: Colors.white,),
                SizedBox(width: 5,),
                Text('More Options', style: TextStyle(color: Colors.white, fontSize: 14),),
                ],
                ),
                  value: 5,
                ),
              ],
              onChanged: (value) {
                setState(() {
                 
                });
              }
         );
}

void setState(Null Function() param0) {
}
