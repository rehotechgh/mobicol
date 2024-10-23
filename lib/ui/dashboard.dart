import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobicol/customwidget/transactionhistory.dart';
import 'package:mobicol/ui/deposit.dart';
import 'package:mobicol/ui/login.dart';

import '../customwidget/accountinfo.dart';
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
              //AccountInfoContainer
              accountinfo(),
              const SizedBox(height: 20,),
             const transactionhistory(),

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
