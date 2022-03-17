import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PricingView extends StatelessWidget {
  const PricingView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child: Center(
        child: FittedBox(
          child: Text(
            'Pricing',
            style: GoogleFonts.montserratAlternates(
              fontSize: 80.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}