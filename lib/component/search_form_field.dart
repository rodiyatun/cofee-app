// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFormField extends StatelessWidget {
   SearchFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
                
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 23,
                    vertical: 12,
                  ),
                  hintText: "Search...",
                  hintStyle: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffa1a6b3),
                  ),
                  suffixIcon: const Icon(Icons.search,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: const BorderSide(
                      color: Color(0xffe2e6eb),
                    ),
                    ),
                ),
              );
  }
}