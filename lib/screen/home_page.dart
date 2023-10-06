// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/component/category_coffe.dart';
import 'package:kopi/component/header_home_page.dart';
import 'package:kopi/component/product_card.dart';
import 'package:kopi/component/search_form_field.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:     const EdgeInsets.symmetric(horizontal: 35, vertical: 56),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    const HeaderHomePage(),
                  // ignore: prefer_const_constructors
                  SizedBox(height: 13),
                 SearchFormField(),
                 const SizedBox(height: 30),
                 const CategoryCoffeWidget(),
                 const SizedBox(height: 35),
                 Text("Recommended for you", style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                 ),
                 ),
                 const SizedBox(height: 35),
                 
                 GridView.count(
                  padding: EdgeInsets.zero,
                  childAspectRatio: 0.74,
                  crossAxisSpacing: 10,
                  mainAxisSpacing:20 ,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children:  [
                    ProductCard(
                      image:'assets/images/coffe1.jpg',
                      title: 'capucino',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/coffe2.jpg',
                      title: 'Choco Latte',
                      review: "4.5",
                    ),
                        ProductCard(
                      image:'assets/images/coffe3.jpg',
                      title: 'Latte',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/coffe4.jpg',
                      title: 'Americano',
                      review: "4.3",
                    ),
                    ProductCard(
                      image:'assets/images/coffe5.jpg',
                      title: 'Ice Coffe',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/coffe6.jpg',
                      title: 'V60',
                      review: "4.3",
                    ),
                  
                  ],
                  ),
                //  ProductCard(),
                  
              ],
            ),
          ),
        ),
        ),
    );
  }
}

