import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class JogosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> jogos = [
      {
        'imagem': 'https://link-do-jogo-1.jpg',
        'descricao':
            'Adam trabalhou como designer no jogo X, contribuindo para a criação do ambiente e personagens.'
      },
      {
        'imagem': 'https://link-do-jogo-2.jpg',
        'descricao':
            'No jogo Y, Adam foi responsável pela direção de arte e criação do conceito visual.'
      },
      {
        'imagem': 'https://link-do-jogo-3.jpg',
        'descricao': 'Ele ajudou a criar a atmosfera visual única em Z.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Jogos de Adam Adamowicz'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: jogos.map((jogo) {
              return Column(
                children: [
                  Image.network(jogo['imagem']!),
                  SizedBox(height: 10),
                  Text(jogo['descricao']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16)),
                ],
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true, // As imagens irão passar automaticamente
              autoPlayInterval: Duration(seconds: 3),
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
