import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  static const String id = 'Login';
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child:   Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration:const BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight, 
                    colors: [
                      Color(0xff5474fc),
                      Color(0xff5474fc)
                    ])
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
             decoration: const BoxDecoration(color: Colors.white,
             borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
              child: const Text(""),

            ),
               Column(
           children: [
               // Image.asset("/images/Sticheez.jpg",width: MediaQuery.of(context).size.width/1.5,
              //  fit: BoxFit.cover,)
              const Padding(

                padding: EdgeInsets.all(60.0),
                child: Center(

                  child: Image(

                   alignment: Alignment.center,
                   height: 180.0,
                   width: 300.0,
                   image: AssetImage('images/tucapp.png'),
                               ),
                ),

              ),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(

                 children: [
                 const  Text("Welcome,TUC-CU App", style: TextStyle(color: Colors.black, fontSize: 20),),
                 const  SizedBox(height:40),
                   TextField(
                   //  controller: CustomerTextController,
                     decoration: InputDecoration(
                       prefixIcon:  const Icon(Icons.person),
                       enabledBorder: OutlineInputBorder(
                         borderSide:
                      const    BorderSide(width: 1, color: Colors.grey),
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       labelText: 'Username',
                       labelStyle: const TextStyle(
                         fontSize: 14.0,
                       ),
                     ),
                   ),
                 const   SizedBox(height: 20,),
                   TextField(
                     obscureText: true,
                     //  controller: CustomerTextController,
                     decoration: InputDecoration(
                       prefixIcon:  const Icon(Icons.lock),
                       enabledBorder: OutlineInputBorder(
                         borderSide:
                         const    BorderSide(width: 1, color: Colors.grey),
                         borderRadius: BorderRadius.circular(10.0),
                       ),
                       labelText: 'Password',

                       labelStyle: const TextStyle(
                         fontSize: 14.0,
                       ),
                     ),
                   ),
                 const  SizedBox(height:20),
                   const  Row(
                     mainAxisAlignment: MainAxisAlignment.end, // Aligns items to the end
                     children: [
                       Icon(Icons.lock,size: 14,),
                       SizedBox(width: 8), // Space between icon and label
                       Text('Forgot Password?', style: TextStyle(fontSize: 14)),


                     ],
                   ),
                 const  SizedBox(height:20),
                   ElevatedButton.icon(
                     icon: const Icon(Icons.lock_open_rounded,color: Colors.white,),
                     label: const Text('Login',style: TextStyle(color: Colors.white),),
                     style: ElevatedButton.styleFrom(
                         fixedSize: const Size(400, 50),
                        backgroundColor : const Color(0xff5474fc),
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10))), onPressed: () {  },

                   ),
                  const SizedBox(height: 20,),
                 const  Row(
                   mainAxisAlignment: MainAxisAlignment.end, // Aligns items to the end
                   children: [
                    //Icon(Icons.account_balance_wallet,size: 14,),
                     SizedBox(width: 8), // Space between icon and label
                     Text('Are you new to this app? ', style: TextStyle(fontSize: 14)),
                     Text('Register', style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),


                     ],
                   )


                 ],
               ),
             )

                           ],
                 ),

          ],
        ),
      ),

    );
  }
}
