import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCoffeWidget extends StatefulWidget {
  const CategoryCoffeWidget({super.key});

  @override
  State<CategoryCoffeWidget> createState() => _CategoryCoffeWidgetState();
}

class _CategoryCoffeWidgetState extends State<CategoryCoffeWidget> {
   final List<Map<String, dynamic>> dataCoffe=[
    {
      "title": "Para Coffe",
      "image": "assets/images/coffe_cup_logo.png",
      "menu": "11 Menu",
    },
     {
      "title": "Escape Coffe",
      "image": "assets/images/drink2_logo.png",
      "menu": "20 Menu",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 70,
               child:ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>  const SizedBox(width: 20,
                ),
                shrinkWrap: true,
                itemCount: dataCoffe.length,
                itemBuilder: (context, index) => Container(
                  width: 190,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:  const Color(0xffe6e6e6),

                    ),
                    borderRadius: BorderRadius.circular(16),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 23,
                      vertical: 16,
                      ),
                    child: Row(
                      children: [
                        Image.asset(
                          dataCoffe[index]["image"],
                          width: 32,
                        ),
                     const SizedBox(width: 19),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataCoffe[index]["title"], style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: const Color(0xff1e2843),
                        ),
                        ),
                        Text(dataCoffe[index]["menu"], style: GoogleFonts.dmSans(
                          color: const Color(0xffa1a6b3),
                          fontWeight: FontWeight.w500,
                        ),)
                      ],
                     )
                      ],
                    
                    ),
                  ),
                ),
               ),
               );
  }
}