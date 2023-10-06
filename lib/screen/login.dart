// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kopi/component/login_form.dart';
import 'package:google_fonts/google_fonts.dart';
class WCLoginPage extends StatelessWidget {
    const WCLoginPage({super.key,
   required this.title,
     this.onPressed,
   });
    final String title;
  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding:   EdgeInsets.symmetric(horizontal: 37, vertical: 50 ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
             InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child:  Icon(
               Icons.chevron_left,
              ),
             ),
                   SizedBox(height: 40),
                    WCLoginForm(title: '',),
                    SizedBox(height: 25),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Don't Have an account?", 
                    style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
                      color:  Color(0XFFA1a6B3),
                      ),
                      ),
                       SizedBox(width: 9),
                      Text("Join us", style: GoogleFonts.roboto(fontWeight: FontWeight.bold,
                      color:  Color(0XFFD18645),
                      ),
                      ),
                    ],
                  ),
            
                 ],
               ),
             ),
          ),
        );
      
  }
}