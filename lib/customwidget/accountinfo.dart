import 'package:flutter/material.dart';

class accountinfo extends StatelessWidget
{
  accountinfo({super.key});

  @override
  Widget build(context)
  {
    return Container(

      width: MediaQuery.of(context).size.width,
      height: 140,

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage("images/card.png"), // Your image path here
          fit: BoxFit.cover, // You can change this to fit your design
        ),
        // Curved edges
      ),
      child:const Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(


          children:[
            Text('Account #',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              // You can adjust the font size as needed
            ),),
            Text('TUCCU00988776666',),

          ],
        ),
      ),

    );
  }
}