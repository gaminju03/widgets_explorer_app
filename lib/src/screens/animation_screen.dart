import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key key}) : super(key: key);
  @override
   _AnimationsScreenState createState() => _AnimationsScreenState();
}

class _AnimationsScreenState extends State<AnimationScreen> {
  double _width = 50.0;
  double _heightContainer = 50.0;
  Color _color = CupertinoColors.activeGreen;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Animation Container'),
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints.expand(),

            color: CupertinoColors.systemGrey4,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                
                AnimatedContainer(
                  
  width: _width,
  height: _heightContainer,
  decoration: BoxDecoration(
    color: _color,
    borderRadius: _borderRadius,
  ),
  
  duration: Duration(seconds: 1),
  
  curve: Curves.fastOutSlowIn,
),

                Positioned(
                  bottom: 100,
                  child: CupertinoButton.filled(
                      child: Icon(CupertinoIcons.play_arrow),
                       onPressed: (){
                          final random = Random();
                            setState(() {
                            _heightContainer = random.nextInt(300).toDouble();
                            _width = random.nextInt(300).toDouble();

                               _color = Color.fromRGBO(
                                 random.nextInt(255), 
                                 random.nextInt(255), 
                                 random.nextInt(255),
                                  1,
           
                                 );

      _borderRadius = 
      BorderRadius.circular(random.nextInt(100).toDouble());
                });


                      },
         padding: EdgeInsets.symmetric(horizontal: 30)
                      ),
                )
              ],
            ),
          ),
        )

        );
  }

}