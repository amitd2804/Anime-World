


import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.black,
     appBar: AppBar(
  
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
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
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
            
        // Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //     TextButton(
        //      onPressed: () {
        //             Navigator.push(
        //               context as BuildContext,
        //               MaterialPageRoute(builder: (context) => LoginPage()),
        //             );
        //           },
        //       child: const Text(
        //       'Create Account',
        //       style: TextStyle(
        //       color: Colors.white70),),),
        //     const VerticalDivider(thickness: 1, color: Color.fromARGB(255, 255, 255, 255), indent: 10, endIndent: 10,),
        //     TextButton(
        //       onPressed: (){},
        //       child: const Text(
        //       'Manage Other',
        //       style: TextStyle(
        //       color: Colors.white70),),),
        //   ],
        // ),
           
           
           Padding(
             padding: const EdgeInsets.all(0.0),
             child: Container( 
                width: 280,
                height: 70,
                
                child: const SizedBox( height: 20, width: 200,
                  child: TextField( 
                  autocorrect: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'First Name',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15,),
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
                  ),),
                ),),
           ),
           Padding(
             padding: const EdgeInsets.all(0.0),
             child: Container( 
                width: 280,
                height: 70,
                
                child: const SizedBox( height: 20, width: 200,
                  child: TextField( 
                  autocorrect: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Last Name',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15,),
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
                  ),),
                ),),
           ),
               SizedBox(
                 child: Container(
                           width: 280,
                           height: 70,
                          
                           child: const SizedBox( height: 20, width: 200,
                  child: TextField( 
                  autocorrect: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Mobile Number or Id',
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
                  ),),
                           ),),
               ),
               const SizedBox(height: 2,),
      
              Container( height: 40, width: 180, margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                 child: ElevatedButton(
                 onPressed: () {},
                 style: ElevatedButton.styleFrom(elevation: 15,
                 backgroundColor:  const Color.fromARGB(43, 145, 43, 43),
                 side: const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1,),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
               Row( mainAxisAlignment: MainAxisAlignment.center,
               children: [
               TextButton(
               onPressed: () {
               Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => LoginPage()),
               );
              },
              child: const Text(
              'Report a Problem',
              style: TextStyle(
              color: Colors.white70),),),
              const VerticalDivider(thickness: 1, color: Color.fromARGB(255, 255, 255, 255), indent: 10, endIndent: 10,),
              TextButton(
              onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  LoginPage()),
             );
            },
              child: const Text(
              'Forget Password?',
              style: TextStyle(
              color: Color.fromARGB(255, 2, 158, 255)),),),
          ],
        ),
              
              
           
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
           
        const ListTile( contentPadding: EdgeInsets.only(left: 640),
            leading: Icon(Icons.logout,color: Colors.white,),
            title: Text('L O G O U T',
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
        ),
        SizedBox(height: 15),

        SizedBox(height: 170, width: double.infinity,
         child: Image.network('https://static.wikia.nocookie.net/a70aa201-9cc9-4cb5-b775-653ac380b7c3/scale-to-width/755',fit: BoxFit.fill,),
        
        )
        ],
        ),
        ),
      ),

    );
  }
}