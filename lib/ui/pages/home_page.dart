import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_landing_page/provider/page_provider.dart';
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
    return BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade50,
            Colors.blue.shade600
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
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollController,
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