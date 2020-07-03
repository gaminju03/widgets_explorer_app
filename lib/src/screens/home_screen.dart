import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_explorer_app/src/routes/ruoutes.dart';

import 'package:widgets_explorer_app/src/screens/acction_sheet_screen.dart';
import 'package:widgets_explorer_app/src/screens/animation_screen.dart';
import 'package:widgets_explorer_app/src/screens/card_screen.dart';
import 'package:widgets_explorer_app/src/screens/widgets_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              title: Text('Widgets'), 
              ),
               BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.play_arrow),
              title: Text('Animation'), 
              ),
               BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.share_up),
              title: Text('Cards'), 
              ),
          ],
          
        ),
        tabBuilder: (context, index){
          return CupertinoTabView(
            
            routes: getAplicationRouts(),

            builder: (context){
              switch(index){
                case 0:
                return WidgetsScreen();
                case 1:
                return AnimationScreen();
                case 2:
                return CardScreen();
              }
              return WidgetsScreen();
            }
          );
        }
      );
  }
}