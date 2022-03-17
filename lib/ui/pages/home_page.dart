import 'package:flutter/material.dart';
import 'package:scrollable_landing_page/ui/shared/custom_app_menu.dart';
import 'package:scrollable_landing_page/ui/views/about_view.dart';
import 'package:scrollable_landing_page/ui/views/contact_view.dart';
import 'package:scrollable_landing_page/ui/views/home_view.dart';
import 'package:scrollable_landing_page/ui/views/location_view.dart';

import '../views/pricing_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: <Widget>[
            _HomeBody(),
            Positioned(
              right: 20.0,
              top: 20.0,
              child: CustomAppMenu()
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink,
            Colors.purpleAccent
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5,
            0.5
          ]
        )
      );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const <Widget>[
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView()
      ],
    );
  }
}