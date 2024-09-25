import 'package:flutter/material.dart';

class Telainformacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Informações sobre o conteúdo'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
      
             Navigator.pop(context); 
            },
          ),
        ),
       body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           const Padding(
              padding:EdgeInsets.all(16.0),
              child: Text(
                'As informações da recomendações entraram aqui',
                style: TextStyle(fontSize: 20),
              ),
            ),
          
            Center(
              child: Image.network(
                'https://static.nationalgeographicbrasil.com/files/styles/image_3200/public/75552.jpg?w=1900&h=1267', 
                height: 200,
                fit: BoxFit.cover,
              ),
            ),          
        ]
      )
    );
  }
}