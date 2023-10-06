import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_order_product_button.dart';

class SizeCart extends StatelessWidget {
  const SizeCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Size",
                   style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  color:  const Color(0xff1e2843),
                   ),
                  ),
                  Row(
                    
                    children:   [
                     Column(
                       children: [
                         const DetailOrderProductButton(text: 'S'),
                         const SizedBox(height: 6),
                         Text("\$2.6",
                         style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffa1a6b3),
                         ),
                         ),
                       ],
                     ),
                     const SizedBox(width: 5),
                   Column(
                       children: [
                         const DetailOrderProductButton(text: 'M'),
                         const SizedBox(height: 6),
                         Text("\$3.0",
                         style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffa1a6b3),
                         ),
                         ),
                       ],
                     ),
                            const SizedBox(width: 5),
                      Column(
                       children: [
                         const DetailOrderProductButton(text: 'L'),
                         const SizedBox(height: 6),
                         Text("\$3.5",
                         style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffa1a6b3),
                         ),
                         ),
                       ],
                     ),

                    ],
                  ),
                
                  
                ],
              );
  }
}