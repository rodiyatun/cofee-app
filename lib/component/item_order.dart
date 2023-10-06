import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/component/detail_order_product_button.dart';

class ItemOrder extends StatelessWidget {
  const ItemOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Items",
                   style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.bold,
                  color:  const Color(0xff1e2843),
                   ),
                  ),
                  Row(
                    
                    children:  [
                     const DetailOrderProductButton(text: '-'),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 16),
                       child: Text("2",
                      style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.bold,
                      color:  const Color(0xff1e2843),
                      ),
                      ),
                     ),
                     const DetailOrderProductButton(text: '+'),

                    ],
                  ),
                 
                ],
              );
  }
}