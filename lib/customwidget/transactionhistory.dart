import 'package:flutter/material.dart';
import 'package:mobicol/ui/currentmonth.dart';

import '../ui/dashboard.dart';
import '../ui/deposit.dart';
import '../ui/withdrawals.dart';

class transactionhistory extends StatelessWidget
{
  const transactionhistory({super.key});

  @override
  Widget build(context)
  {
    return  Container(

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
                            MaterialPageRoute(builder: (context) => const Withdrawals()),
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
                            MaterialPageRoute(builder: (context) => const Currentmonth()),
                          );
                        }),
                    const Text('Statements',style: TextStyle(color: Colors.white)),
                  ],),
                ),





              ]
          )
      ),
    );
  }
}