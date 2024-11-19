import 'package:flutter/material.dart';

class BiografiaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biografia de Adam Adamowicz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://link-da-imagem-do-adam.jpg'), // Substitua com o link real da imagem
            ),
            SizedBox(height: 20),
            Text(
              'Adam Adamowicz foi um artista e designer de jogos...',
              style: TextStyle(fontSize: 18),
            ),
            // Adicione mais informações sobre Adam aqui.
          ],
        ),
      ),
    );
  }
}
