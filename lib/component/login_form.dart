import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kopi/component/main_page.dart';
import 'package:kopi/component/primary_button.dart';
import 'package:kopi/component/social_button.dart';
import 'costom_form_field.dart';

class WCLoginForm extends StatelessWidget {
  const WCLoginForm({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          textAlign: TextAlign.center,
          style: GoogleFonts.dmSans(
            color: const Color(0XFF1E2843),
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          "  Sign in to continue",
          textAlign: TextAlign.center,
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 177, 175, 201),
          ),
        ),
        const SizedBox(height: 38),
        const Row(
          children: [
            WCSocialButton(img: "assets/images/google.png", title: "Google"),
            SizedBox(width: 5,),
            WCSocialButton(img: "assets/images/facebook.png", title: "Facebook", imgSize: 10,),
          ],
        ),
        const SizedBox(height: 28),
        const CostomFormField(hintText: "Username or Email", suffixIcon: Icon(Icons.email),
        ),
        const SizedBox(height: 28),
        const CostomFormField(hintText: "Password", suffixIcon: Icon(Icons.lock),
        obscureText: true,
        ),
        const SizedBox(height: 18),
        WCprimaryButton(
          
          title: "Sign In",
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const WCMainPage(),
            ),
            );
          },
        ),
       
        TextButton(
          onPressed: () {},
          child: Text(
            "forgot password?",
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
              color: const Color(0xffa1a6B3)
            ),
          ),
        ),
      ],
    );
  }
}
