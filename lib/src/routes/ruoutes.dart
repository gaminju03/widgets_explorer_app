import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer_app/src/screens/acction_sheet_screen.dart';
import 'package:widgets_explorer_app/src/screens/home_screen.dart';
import 'package:widgets_explorer_app/src/screens/picker_screen.dart';
import 'package:widgets_explorer_app/src/screens/segmented_screen.dart';
import 'package:widgets_explorer_app/src/screens/slider_screen.dart';
import 'package:widgets_explorer_app/src/screens/text_input_screen.dart';

Map<String, WidgetBuilder> getAplicationRouts(){
  return<String, WidgetBuilder>{
    '/'          : (BuildContext context) => HomeScreen(),
    '/actionsheet': (BuildContext context) => ActionSheetScreen(),
    '/textinput': (BuildContext context) => TextInputScreen(),
    '/swithandslider': (BuildContext context) => SliderScreen(),
    '/segmented': (BuildContext context) => SegmentedControlScreen(),
     '/picker': (BuildContext context) => PickerScreen(),
     
     
  };
}