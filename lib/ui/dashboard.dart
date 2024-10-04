import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xffcdd7fc),
      ),
      body: Padding(
        padding:const EdgeInsets.all(15),
        child:Column(
            children:[
              Container(

                width: MediaQuery.of(context).size.width,
                height: 110,

                decoration: BoxDecoration(
                  color: const Color(0xffcdd7fc),
                  borderRadius: BorderRadius.circular(20),
               // Curved edges
                ),
                child:const Padding(
                  padding:EdgeInsets.all(10),
                  child: Row(
                    children:[
                      CircleAvatar(

                        radius: 40, // Radius of the avatar
                          backgroundImage: AssetImage("images/kojo.png"),
                        // You can use NetworkImage for images from the internet
                      ),
                      SizedBox(width:10),
                     Padding(
                       padding: EdgeInsets.all(20.0),
                       child: Column(


                         children:[
                           Text('Francis Kojo Asare Yawson'),
                           Text('GHC 56,000.00',   style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18, // You can adjust the font size as needed
                           ),),

                         ],
                       ),
                     ),


                    ]
                  )
                ),
              ),
              const SizedBox(height:20),
              Container(

                width: MediaQuery.of(context).size.width,
                height: 250,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("images/card.png"), // Your image path here
                    fit: BoxFit.cover, // You can change this to fit your design
                  ),
                  // Curved edges
                ),

              ),

            ]),
      ),
    );
  }
}
