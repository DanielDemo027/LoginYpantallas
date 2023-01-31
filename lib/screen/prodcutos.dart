import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {

    final List<String> productos = <String>['Monitor Lg', 'Mouse Logitech', 'Teclado Corsair', 'Audifonos Audiotechnica', 'Microfono Shure'];
    final List<String> fotos = <String>['monitor.jpg', 'mouse.jpg', 'teclado.jpg', 'audifonos.png', 'microfono.jpg'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: productos.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 100,
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(productos[index]),
                  Image.asset(
                    'images/${fotos[index]}',
                    width: 100,
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}