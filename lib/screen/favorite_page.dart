import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/component/category_coffe.dart';
import 'package:kopi/component/header_home_page.dart';

import '../component/product_card.dart';
import '../component/search_form_field.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
                      image:'assets/images/ice1.jpg',
                      title: 'Orange Tea',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/ice2.jpg',
                      title: 'Strowberry juice',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/ice3.jpg',
                      title: 'Strowbery Tea',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/ice4.jpg',
                      title: 'Cocktail',
                      review: "4.8",
                    ),
                    ProductCard(
                      image:'assets/images/coffe1.jpg',
                      title: 'Capuchino',
                      review: "4.9",
                    ),
                        ProductCard(
                      image:'assets/images/coffe2.jpg',
                      title: 'Choco Latte',
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