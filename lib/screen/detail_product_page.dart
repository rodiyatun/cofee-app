// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/component/item_order.dart';
import 'package:kopi/component/size_card_order.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


class DetailProductPage extends StatelessWidget {
     DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){},
            icon:     const Icon(Icons.add_shopping_cart_outlined, 
            color: Color(0xff1e2843),
            ),
            ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        elevation: 0,
        foregroundColor:     const Color(0xff1e2843),
        backgroundColor: Colors.transparent,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding:     const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 36,
          ),
          child: Center(
            child: Column(
              children: [
                
                
                
                SingleChildScrollView(
                  child: Container(
                    width: 115,
                    height: 70,
                    
                    decoration:   BoxDecoration(
                      
                    
                      image: const DecorationImage(
                        image: AssetImage('assets/images/coffe1.jpg'),
                        ),
                     
                    ),
                  
                  ),
               
                ),
                    const SizedBox(height: 10),
                   Text("Cappucino", 
                   style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.bold,
                    color:  const Color(0xff1e2843),
      
                   ),
                   ),
                    const SizedBox(height:5),
                    SizedBox(
                      width: 245,
                      child: Text('Cappucino made from selected Robusta coffee.',
                      style: GoogleFonts.dmSans(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color:  const Color(0xffa1a6b3),
                    
                ),
                textAlign: TextAlign.center,
                ),
                ),
                 const SizedBox(height: 18),
            
                 SizedBox(height: 20), 
                  ItemOrder(),
                  SizedBox(height: 18),
                  SizeCart(),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delvery Time", style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffa1a6b3),
                      ),
                      ),
                      Text("45 Mins",
                         style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color:  const Color(0xff1e2843),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Price", style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffa1a6b3),
                      ),
                      ),
                      Text("Rp.30000",
                         style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color:  const Color(0xff1e2843),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  
                        AnimatedButton(
                  text: 'Place Order',
                  color: Color.fromARGB(255, 0, 0, 0),
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      animType: AnimType.leftSlide,
                      headerAnimationLoop: false,
                      dialogType: DialogType.success,
                      showCloseIcon: false,
                      title: 'Succes',
                      desc:
                          'Your order will be placed soon',
                      btnOkOnPress: () {
                        debugPrint('OnClcik');
                      },
                      btnOkIcon: Icons.check_circle,
                      onDismissCallback: (type) {
                        debugPrint('Dialog Dissmiss from callback $type');
                      },
                    ).show();

                  },
                ),
                   
                
                  
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}