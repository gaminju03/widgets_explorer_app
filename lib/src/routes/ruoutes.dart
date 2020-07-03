import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer_app/src/screens/acction_sheet_screen.dart';
import 'package:widgets_explorer_app/src/screens/home_screen.dart';

Map<String, WidgetBuilder> getAplicationRouts(){
  return<String, WidgetBuilder>{
    '/'          : (BuildContext context) => HomeScreen(),
    '/actionsheet': (BuildContext context) => ActionSheetScreen(),
  };
}