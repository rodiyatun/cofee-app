import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class WCSocialButton extends StatelessWidget {
  const WCSocialButton({super.key,
  required this.img,
  required this.title,
 this.imgSize=16,
  });
  final String img;
  final String title;
  final double imgSize;
 
  @override
  Widget build(BuildContext context) {
    return Container( 
                        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                        decoration: const BoxDecoration(
                          color:  Color.fromARGB(255, 222, 221, 230),
                          borderRadius: BorderRadius.all(Radius.circular(16),
                          ),
                        ),
                        child: Row(children: [
                          Image.asset(img ,width: imgSize),
                          const SizedBox(width: 14),
                          Text(title, style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                              color:  const Color(0XFF1E2843),
                          ),
                          ),
                        ],
                        ),
                      );
  }
}