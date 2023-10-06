import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text("what would you like",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                   

                  ),
                  ),
                  const Icon(Icons.shopping_cart_outlined,
                  ),
                ],
              );
  }
}