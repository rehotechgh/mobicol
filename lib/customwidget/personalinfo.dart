import 'package:flutter/material.dart';

class personalinfo extends StatelessWidget
{
  personalinfo({super.key});

  @override
 Widget build(context){
    return Container(

      width: MediaQuery.of(context).size.width,
      height: 110,

      decoration: BoxDecoration(
        color: const Color(0xff5474fc),
        borderRadius: BorderRadius.circular(20),
        // Curved edges
      ),
      child:const Padding(
          padding:EdgeInsets.all(10),
          child: Row(
              children:[
                CircleAvatar(

                  radius: 40, // Radius of the avatar
                  backgroundImage: AssetImage("images/default.png"),
                  // You can use NetworkImage for images from the internet
                ),
                SizedBox(width:10),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(


                    children:[
                      Text('Francis Kojo Asare Yawson',style: TextStyle(color: Colors.white),),
                      Text('GHC 56,000.00',   style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18, // You can adjust the font size as needed
                      ),),

                    ],
                  ),
                ),


              ]
          )
      ),
    );
  }
}