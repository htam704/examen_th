import 'package:examen_th/screens/pistas_screen_th.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
   
  final options = const['Pistas', 'Monitores', 'Reservas'];

  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
              trailing: Icon( Icons.arrow_forward_ios_outlined),
              title: Text(options[index]),
              onTap: () {
                final route = MaterialPageRoute(builder: (context) => const PistasScreen());
                Navigator.pushReplacement(context, route);
              },
            ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: options.length
      )
    );
  }
}