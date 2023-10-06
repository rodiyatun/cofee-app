import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/component/category_coffe.dart';
import 'package:kopi/component/header_home_page.dart';

import '../component/product_card.dart';
import '../component/search_form_field.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  color: const Color(0xff1e2843),
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
                      image:'assets/images/pancake1.jpg',
                      title: 'Pancake',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/Roti_bakar2.jpg',
                      title: 'Roti Bakar',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/burger3.jpg',
                      title: 'Burger',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/dimsum4.jpg',
                      title: 'Dimsum',
                      review: "4.8",
                    ),
                    ProductCard(
                      image:'assets/images/beef5.jpg',
                      title: 'Beef Steak',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/Lobster_karee6.jpg',
                      title: 'Lobster Karee',
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