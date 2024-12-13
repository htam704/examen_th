import 'package:flutter/material.dart';

class ReservasScreen extends StatelessWidget {
   
  const ReservasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: AlertDialog(
          title: const Text('Aviso'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: 
          const Column(
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
              child: const Text('Cancelar')
            )
          ],
        )
      ),
    );
  }
}