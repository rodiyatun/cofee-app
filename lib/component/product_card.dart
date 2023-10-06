// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/screen/detail_product_page.dart';

class ProductCard extends StatelessWidget {
   ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.review,

  });
  final String image;
  final String title;
  final String review;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>  DetailProductPage(),
        ),
        );
      },
      child: Container(
       height: 180,
       width: 135,
       decoration: BoxDecoration(
         border: Border.all(
           color:  const Color(0xFFE2e6eb),
         ),
         borderRadius: BorderRadius.circular(16),
       ),
       child: Column(
         children: [
           Container(
            
             height: 120,
             decoration:  BoxDecoration(
               
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage(image),
                 ),
                 borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                 ),
             ),
           ),
            Container(
             width: 145,
             height: 50,
             padding:  const EdgeInsets.only(
               top: 10,
               left: 13,
               
             ),
             child:  Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(title,
                 style: GoogleFonts.dmSans(
                   color:  const Color(0xff1e2843),
                   fontWeight: FontWeight.bold ),),
                    const SizedBox(height: 2),
                  Row(
                   children: [
                      const Icon(Icons.star,
                     size: 12,
                     color: Color(0xffd18645),
                     ),
                      const SizedBox(width: 6),
                     Text(
                       review,
                       style: GoogleFonts.dmSans(
                          color:  const Color(0xff1e2843),
                         fontWeight: FontWeight.bold 
                       ),
                     ),
                   ],
                 ),
               ],
                           
             ),
           ),
         ],
       ),
      ),
    );
  }
}