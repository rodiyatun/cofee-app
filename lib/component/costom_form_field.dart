import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CostomFormField extends StatelessWidget {
  const CostomFormField({super.key,
  required this.hintText,
  required this.suffixIcon,
  this.obscureText=false,
  

  });
  final String hintText;
  final Widget suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return  TextField(
                    obscureText: obscureText ,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 23,vertical: 20),
                      suffixIcon: suffixIcon,
                      hintText: hintText, hintStyle: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFFA1a6B3),
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color:Color.fromARGB(255, 177, 175, 201),
                     ),
                    ),
                    ),
                   );
  }
}