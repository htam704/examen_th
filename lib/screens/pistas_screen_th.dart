import 'package:examen_th/widgets/custom_card_th.dart';
import 'package:flutter/material.dart';

class PistasScreen extends StatelessWidget {
   
  const PistasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
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
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCard(imageUrl: 'https://i.pinimg.com/1200x/ed/9f/4f/ed9f4f1bd6ad8aedb487357c509acc63.jpg', nombre: 'Reservar'),
          SizedBox(height: 10),
          CustomCard(imageUrl: 'https://i.pinimg.com/1200x/ed/9f/4f/ed9f4f1bd6ad8aedb487357c509acc63.jpg', nombre: 'Reservar'),
          SizedBox(height: 10),
          CustomCard(imageUrl: 'https://i.pinimg.com/1200x/ed/9f/4f/ed9f4f1bd6ad8aedb487357c509acc63.jpg', nombre: 'Reservar',),
        ],
      ),
    );
  }
}