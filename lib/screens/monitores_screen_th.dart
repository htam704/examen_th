import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
   
  const MonitoresScreen({Key? key}) : super(key: key);
  
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
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage('https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
            ),
            Text('Rafa Nadal'),
            SizedBox(height: 10),
            CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage('https://sm.ign.com/t/ign_es/news/g/george-rr-/george-rr-martin-was-out-of-the-loop-in-later-game-of-throne_e9vf.h720.jpg'),
            ),
            Text('Gisela Pulido'),
            SizedBox(height: 10),
            CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage('https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
            ),
            Text('Mireia Belmonte'),
          ],
        ),
      )
    );
  }
}

class CustomCardTipo2 {
  const CustomCardTipo2();
}