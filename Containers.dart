import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kairoz_rascunho/Telainformacoes.dart';

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> containers = [
       Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0), 
            color: const Color.fromARGB(255, 158, 54, 244),
            height: 200,
            child: GestureDetector(
              onTap: () async {
                const url = 'https://www.estadao.com.br/';
                
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Não foi possível abrir o link';
                }
              },
              child: Center(
                child: Text(
                  '7 ideias para um final de semana divertido com os amigos!',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
          ), //altura dos containers
          items: containers.map((container) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: 700, //largaura dos containers
                  child: container,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyCarousel(),
    debugShowCheckedModeBanner: false,
  ));
}
