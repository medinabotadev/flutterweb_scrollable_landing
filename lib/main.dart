import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_landing_page/router/router.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Flurorouter.configureRoutes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: _AppScrollBehavior(),
      title: 'Landing Page',
      initialRoute: '/home',
      onGenerateRoute: Flurorouter.router.generator,
    );
  }
}
class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}