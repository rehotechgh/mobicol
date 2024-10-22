import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobicol/ui/deposit.dart';
import 'package:mobicol/ui/login.dart';

import '../customwidget/personalinfo.dart';
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
        backgroundColor: const Color(0xff5474fc),
      ),
      body: Padding(

        padding:const EdgeInsets.all(15),
        child:Column(

            children:<Widget>[
           //  <int>[_currentIndex],
              //PersonalInfoContainer
              personalinfo(),
              const SizedBox(height:20),
              Container(

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

                ),
              const SizedBox(height: 20,),
              Container(

                width: MediaQuery.of(context).size.width,
                height: 100,

                decoration: BoxDecoration(
                  color: const Color(0xff5474fc),
                  borderRadius: BorderRadius.circular(20),
                  // Curved edges
                ),
                child: Padding(
                    padding:const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Column(children: [
                             GestureDetector(child: const Icon(Icons.add_card_outlined,color: Colors.white),
                                 onTap: () {
                                   // Handle icon tap
                                   Navigator.push(
                                     context,
                                     MaterialPageRoute(builder: (context) => const Deposit()),
                                   );
                                 }),
                             const Text('Deposits',style: TextStyle(color: Colors.white),),
                           ],),
                         ),
                        const   SizedBox(width:20),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(children: [
                              GestureDetector(child: const Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
                              onTap: () {
                                // Handle icon tap
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Dashboard()),
                                );
                              }),
                             const  Text('Withdrawals',style: TextStyle(color: Colors.white)),
                            ],),
                          ),
                        const  SizedBox(width:20),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(children: [
                              GestureDetector(child: const Icon(Icons.receipt_long,color: Colors.white),
                              onTap: () {
                                // Handle icon tap
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Dashboard()),
                                );
                              }),
                             const Text('Statements',style: TextStyle(color: Colors.white)),
                            ],),
                          ),





                        ]
                    )
                ),
              ),





            ]),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // set the current index
        selectedItemColor: const Color(0xff5474fc), // color for the selected item
        unselectedItemColor: Colors.grey, // color for unselected items
        backgroundColor: Colors.grey[60], // change background color here
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => const Dashboard()),
              );
              break;
            case 1:
              Navigator.push(
                context,
              MaterialPageRoute(builder: (context) => const login()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()),
              );
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_copy_outlined), label: 'Statement Request'),
          BottomNavigationBarItem(icon: Icon(Icons.feedback_outlined), label: 'Feedback'),
        ],

      ),
    );
  }
}
