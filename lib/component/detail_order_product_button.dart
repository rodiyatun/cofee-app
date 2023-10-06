import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailOrderProductButton extends StatelessWidget {
  const DetailOrderProductButton({super.key,
  required this.text,
  });
 final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffe2e6eb),
                          ),
                          borderRadius: BorderRadius.circular(12),
                      ),
                        child: Center(
                          child: Text(text,
                           style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                             color:  const Color(0xff1e2843),

                 ),
                 ),
    ),
                        
                      );
  }
}