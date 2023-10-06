import 'package:flutter/material.dart';
class WCSecondaryButton extends StatelessWidget {
  const WCSecondaryButton({super.key, required this.title,});
  final String title;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                width: double.infinity,
                height: 50,
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 151, 101, 57),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: (){
                    
                  }, child:  Text(title,),
                 
                 ),
               );
  }
}