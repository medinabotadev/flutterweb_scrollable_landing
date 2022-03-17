import 'package:fluro/fluro.dart';
import 'package:scrollable_landing_page/ui/pages/home_page.dart';

final homeHandler = Handler(
  handlerFunc: (context, params){
    return HomePage();
  }
);