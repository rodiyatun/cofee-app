

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class WCprimaryButton extends StatelessWidget {
  const WCprimaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            width: double.infinity,
            height: 52,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:  Color.fromARGB(255, 19, 15, 23),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
              
              ),
              
              onPressed: onPressed,
              child: Text(title), 
              
               
               
                 
                  
                 ), 
                 );
             
  }
}