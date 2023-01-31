import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        children: [
          const Center(
            child: Text('Bienvenido', textScaleFactor: 2),
          ),
          Image.asset(
            'images/banner.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.fill,  
          ),
          const Padding(  
            padding: EdgeInsets.all(32),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis cursus purus. Ut in leo quis metus tincidunt faucibus et sed enim. Nunc eget tincidunt nisl. Nullam ornare, mi egestas laoreet hendrerit, ligula tortor cursus augue, eget pulvinar augue odio sit amet nulla. Sed fringilla rutrum turpis, et ultrices eros dignissim et. Nam a eleifend nibh. Vivamus blandit dui rutrum eros pretium tempus. Vestibulum vitae enim elit. Sed viverra ligula porta eros convallis congue. Nulla quis auctor nibh. Donec eu libero et nibh congue egestas. Morbi ac efficitur tortor.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
              softWrap: true,
            )
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Center(child: Text('Soluciones DA', style: TextStyle(fontSize: 20)))
            ),
            ListTile(
              title: const Text('Servicios'),
              subtitle: const Text('Lista de servicios ofrecidos'),
              trailing: const Icon(Icons.build),
              onTap: () {
                Navigator.pushNamed(context, '/servicios');
              },
            ),
            ListTile(
              title: const Text('Productos'),
              subtitle: const Text('Lista de productos ofrecidos'),
              trailing: const Icon(Icons.devices),
              onTap: () {
                Navigator.pushNamed(context, '/productos');
              },
            ),
            ListTile(
              title: const Text('Salir'),
              trailing: const Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            )
          ],
        ),
      ),
    );
  }
}