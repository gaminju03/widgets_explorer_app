import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputScreen extends StatefulWidget {
  TextInputScreen({Key key}) : super(key: key);

  @override
  _TextInputScreenState createState() => _TextInputScreenState();

}

class _TextInputScreenState extends State<TextInputScreen> {
  TextEditingController _txtMail;
  String _name;

@override
 
void initState(){
  super.initState();
  _txtMail = TextEditingController(text: 'noname@domain.com');
}

@override
void dispose(){
  _txtMail .dispose();
  super.dispose();
}

@override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Text Inputs'),
        previousPageTitle: 'Widget',
      ),
      child: ListView(
        children: <Widget>[
          Container(
            height: 40.0,
            color: CupertinoColors.lightBackgroundGray,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Introduce los siguientes datos:',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
          ),
          CupertinoTextField(
            prefix: Icon(
              CupertinoIcons.person_solid,
              color: CupertinoColors.lightBackgroundGray,
              size: 28.0,
            ),
            padding: EdgeInsets.symmetric(horizontal:6.0, vertical:12.0),
            clearButtonMode: OverlayVisibilityMode.editing,
            textCapitalization: TextCapitalization.words,
            autocorrect: false,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.0, color: CupertinoColors.inactiveGray
                ),
              ),
            ),
            placeholder: 'Name',
            autofocus: true,
            onEditingComplete: ()=>print('onEditingComplete:'),
            onSubmitted: (value){
              setState(() {
                _name = value;
              });
            },
          ),

            CupertinoTextField(
              controller: _txtMail,
              prefix: Icon(
                CupertinoIcons.mail_solid,
                color: CupertinoColors.lightBackgroundGray,
                size: 28.0,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
              clearButtonMode: OverlayVisibilityMode.editing,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.0, color: CupertinoColors.inactiveGray
                  ),
                ),
              ),
              placeholder: 'Email',
            ),

            CupertinoTextField(
              prefix: Icon(
                CupertinoIcons.padlock_solid,
                color: CupertinoColors.lightBackgroundGray,
                size: 28.0,
              ),
              padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 12.0),
              clearButtonMode: OverlayVisibilityMode.editing,
              keyboardType: TextInputType.number,
              autocorrect: false,
              obscureText: true,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.0, color: CupertinoColors.inactiveGray
                  ),
                ),
              ),
              placeholder: 'Create PIN',
            ),
            Container(
              height: 40,
              color: CupertinoColors.lightBackgroundGray,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40.0),
            ),
              CupertinoButton(
                child: Text('Registrar'),
                onPressed:() => _showDialog(context),
              ),
        ],
      ),
    );
  }


void _showDialog(BuildContext context){
  showCupertinoDialog(
    context: context,
    builder: (context){
      return CupertinoAlertDialog(
        title: Text('Saludo'),
        content: Text('Hola! $_name se encio el correo ${_txtMail.text}'),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('OK'),
            isDefaultAction: true,
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );
    }
  );
}





}