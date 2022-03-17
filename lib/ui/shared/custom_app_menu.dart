import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_landing_page/ui/shared/custom_menu_item.dart';

class  CustomAppMenu extends StatefulWidget {
  const CustomAppMenu ({ Key? key }) : super(key: key);

  @override
  State<CustomAppMenu> createState() => _CustomAppMenuState();
}

class _CustomAppMenuState extends State<CustomAppMenu> with SingleTickerProviderStateMixin{
  bool isOpen = false;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if(isOpen){
            controller.reverse();
          } else {
            controller.forward();
          }
          setState(() {
            isOpen = !isOpen;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          width: 150.0,
          // height: isOpen ? 300 : 50,
          color: Colors.black,
          child: Column(
            children: [
              _MenuTitle(isOpen: isOpen, controller: controller),
              if (isOpen)
              ...[
                CustomMenuItem(text: 'Home', onPressed: (){}),
                CustomMenuItem(text: 'About', onPressed: (){}),
                CustomMenuItem(text: 'Pricing', onPressed: (){}),
                CustomMenuItem(text: 'Contact', onPressed: (){}),
                CustomMenuItem(text: 'Location', onPressed: (){}),
                SizedBox(height: 8.0,)
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuTitle extends StatelessWidget {
  const _MenuTitle({
    Key? key,
    required this.isOpen,
    required this.controller,
  }) : super(key: key);

  final bool isOpen;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 50.0,
      child: Row(
        children: <Widget>[
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: isOpen ? 50.0 : 0.0,
          ),
          Text('Menu', style: GoogleFonts.roboto(color: Colors.white, fontSize: 18.0),),
          Spacer(),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: Colors.white
          )
        ],
      ),
    );
  }
}