import 'package:flutter/material.dart';
import 'package:kopi/screen/detail_product_page.dart';
import 'package:kopi/screen/favorite_page.dart';
import 'package:kopi/screen/food_menu.dart';
import 'package:kopi/screen/home_page.dart';

 
class WCMainPage extends StatefulWidget {
   const WCMainPage({super.key});

  @override
  State<WCMainPage> createState() => _WCMainPageState();
}

class _WCMainPageState extends State<WCMainPage> {
   int _currentIndex =0;
  void _onTap(int index){
   _currentIndex=index;
   setState(() {
     
   });
  }
  List<Widget> warungcoffePage=[
     HomePage(),
   HomePage(),
    const FavoritePage(),
    const FoodMenu(),
    DetailProductPage(),
     
  ];
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
    body: warungcoffePage[_currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      iconSize: 28.0,
      type: BottomNavigationBarType.fixed,
      onTap: _onTap,
      currentIndex: _currentIndex,
      elevation: 0,
      unselectedItemColor: const Color(0XFFAEAEAE),
      selectedItemColor:  const Color.fromARGB(255, 109, 69, 14),
      showSelectedLabels: false,
      showUnselectedLabels: false,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
          ),
             BottomNavigationBarItem(
          icon: Icon(Icons.coffee_outlined),
          label: "",
          ),
             BottomNavigationBarItem(
          icon: Icon(Icons.emoji_food_beverage),
          label: "",
          ),
             BottomNavigationBarItem(
          icon: Icon(Icons.food_bank),
          label: "",
          ),
          
           BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_checkout_outlined),
          label: "",
          ),
      ],
      ),
    );
  }
}