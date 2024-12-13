import 'package:examen_th/router/app_routes_th.dart';
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
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/originals/c2/3f/bf/c23fbfdb6b6b721010ab37fcdc624ae3.jpg'),
            ),
          )
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.MenuOptions[index].icon),
          title: Text(AppRoutes.MenuOptions[index].name),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) => AppRoutes.MenuOptions[index].screen);
            Navigator.pushReplacement(context, route);
          },
        ), 
        separatorBuilder: (context, index) => const Divider(), 
        itemCount: AppRoutes.MenuOptions.length
      )
    );
  }
}