import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatefulWidget {
  final String text;
  final Function onPressed;
  CustomMenuItem({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  State<CustomMenuItem> createState() => _CustomMenuItemState();
}

class _CustomMenuItemState extends State<CustomMenuItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (event){
        setState(() {
          isHover = false;
        });
      },
      child: GestureDetector(
        onTap: () => widget.onPressed,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: 150.0,
          height: 50.0,
          color: isHover ? Colors.blueAccent : Colors.black,
          child: Center(
            child: Text(widget.text, style: GoogleFonts.roboto(fontSize: 20.0, color: Colors.white),)
          ),
        ),
      ),
    );
  }
}