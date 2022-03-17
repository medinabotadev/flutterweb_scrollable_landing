import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactView extends StatelessWidget {
  const ContactView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: Center(
        child: FittedBox(
          child: Text(
            'Contact',
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