import 'package:flutter/material.dart';

class ReservasScreen extends StatelessWidget {
   
  const ReservasScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    //print('Hola mundo');
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return AlertDialog(
          title: Text('Aviso'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: 
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('El sistema de reservas está deshabilitado en estos momentos'),
              SizedBox(height: 10,),
              FlutterLogo( size:  100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar')
            )
          ],
          
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}