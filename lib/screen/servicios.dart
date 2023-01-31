import 'package:flutter/material.dart';

class Servicios extends StatelessWidget {
  const Servicios({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> servicios = <String>['Mantenimiento', 'Reparación', 'Formateo', 'Instalación', 'Actualización'];
    final List<int> colores = <int>[700, 600, 500, 400, 300];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Servicios'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: servicios.length,
        itemBuilder: (BuildContext context, int index){
          return Container(
            height: 90,
            color: Colors.green[colores[index]],
            child: Center(child: Text(servicios[index])),    
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}