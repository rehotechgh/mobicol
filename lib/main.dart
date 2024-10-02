import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobicol/ui/login.dart';


void main() {
  runApp(const Mobicol());
}

class Mobicol extends StatefulWidget {
  const Mobicol({super.key});

  @override
  State<Mobicol> createState() => _MobicolState();
}

class _MobicolState extends State<Mobicol> {
  @override
  Widget build(BuildContext context) {
    return    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MOBICol 1.0',
      theme: ThemeData(
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
        scaffoldBackgroundColor: Colors.white,
        // primarySwatch: Palette.kToDark,
        // bottomAppBarColor: Palette.kToDark),
      ),
      home: const login(),
      // initialRoute: login.id ,
      //  routes: {

      // login.id : (context)=>login(),
      // dashboard.id : (context)=>dashboard()


      //  }
    );
  }
}
