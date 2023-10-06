// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/component/primary_button.dart';
import 'package:kopi/component/secondary_button.dart';
import 'package:kopi/screen/login.dart';



class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 50, vertical: 50,),
          child: Center(
            child: Column(
              children:[
                Text("Coffe App", style: GoogleFonts.dmSans(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color:    Color.fromARGB(255, 0, 0, 0),
                ),
               ),
               const SizedBox(height: 12),
               
                  Text(" Dibuat oleh Barista Profesional , banyak macam Coffe dan Soft Drink ", textAlign: TextAlign.center, style: GoogleFonts.roboto(
                    
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 177, 175, 201),
                  ),
                 ),
               Container(
                width: 180,
                height: 280,
                margin:  const EdgeInsets.only(top: 21, bottom: 45,
                ),
                decoration:  const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/coffe-ilustrator.png",
                  ),
                  ),
                ),
               ),
                    WCprimaryButton(title: 'Sign In',
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WCLoginPage(title: 'Sign In',),
              ),
              );
              },),
                     SizedBox(height: 6,),
                     WCSecondaryButton(title: "Sign Up"),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}