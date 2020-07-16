import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheetScreen extends StatefulWidget {
  ActionSheetScreen({Key key}) : super(key: key);

  @override
  _ActionSheetScreenState createState() => _ActionSheetScreenState();

}

class _ActionSheetScreenState extends State<ActionSheetScreen> {
String _selectedValue;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Action Sheet and Alerts'),
        previousPageTitle: 'Widgets',
      ),
       child: SafeArea(
                child: Center(
                                  child: Column(
           children: <Widget>[
              SizedBox(height: 50.0,),
             CupertinoButton.filled(
               padding: EdgeInsets.symmetric(horizontal:100.0, vertical:10.0),
               child: Text('Alert'),
              onPressed: ()=> _showAlert(context),
              ),

              SizedBox(height: 16.0,),

                CupertinoButton.filled(
               padding: EdgeInsets.symmetric(horizontal:70.0, vertical:10.0),
               child: Text('Action Sheet'),
              onPressed: ()=>_showAcctionSheet(context),
                            ),
              
                       ],
                    ),
                              ),
                     ),
                  );
                }
              
  void _showAcctionSheet(BuildContext context) {
showCupertinoModalPopup<String>(
  context: context, 
  builder: (context){
    return CupertinoActionSheet(
      title: Text('Favorito Frameword '),
      message: Text('Desea guardar los cambios ?'),
      actions: <Widget>[

       
           CupertinoActionSheetAction(
          child: Text('Fluter'),
          isDestructiveAction: true,
          onPressed: ()=>Navigator.pop(context,"Fluter"),
          ),
           CupertinoActionSheetAction(
          child: Text('Reac'),
          isDestructiveAction: true,
          onPressed: ()=>Navigator.pop(context,"React"),
          ),
           CupertinoActionSheetAction(
          child: Text('Native'),
          isDestructiveAction: true,
          onPressed: ()=>Navigator.pop(context,"Native"),
          ),
      ],
      cancelButton: CupertinoActionSheetAction(
          child: Text('Cancelar'),
          isDefaultAction: true,
          onPressed: ()=>Navigator.pop(context,"Cancelar"),
          ),
    );
  },
  ).then((value) {
    setState((){
      _selectedValue = value;
    });
  });


  }

void _showAlert(BuildContext context){
showCupertinoDialog<String>(
  context: context, 
  builder: (context){
    return CupertinoAlertDialog(
      title: Text('Guardar los cambios '),
      content: Text('Desea guardar los cambios ?'),
      actions: <Widget>[

        CupertinoDialogAction(
          child: Text('Cambiar'),
          onPressed: ()=>Navigator.pop(context,"Cancelar"),
          
          ),
           CupertinoDialogAction(
          child: Text('Aceptar'),
          onPressed: ()=>Navigator.pop(context,"Aceptar"),
          
          ),
          Text('Has seleccionado $_selectedValue'),
      ],
    );
  },
  ).then((value) {
    setState((){
      _selectedValue = value;
    });
  });
}


}