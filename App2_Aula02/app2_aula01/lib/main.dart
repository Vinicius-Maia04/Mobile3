import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: TelaResponsiva(),
  ));
}

class Tela extends StatelessWidget {
  const Tela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Aula 02'),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}

class TelaResponsiva extends StatelessWidget {
  const TelaResponsiva({super.key});

  @override
  Widget build(BuildContext context) {
    final media_query_data = MediaQuery.of(context).size; // Armazena informações sobre a tela do app
    final screen_height = media_query_data.height; // Altura da tela
    final screen_width = media_query_data.width; // Largura da tela

    // Definir os breakpoints
    final is_mobile = screen_width < 600;
    final is_tablet = screen_width >= 600 && screen_width < 1024;
    final is_desktop = screen_width >= 1024;

      return Scaffold(
        appBar: AppBar(
          title: Text('App Tela Responsiva'),
        ),
        drawer: is_mobile
        ? Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu'),
              ),
              ListTile(
                title: Text('Item 1'),
              ),
              ListTile(
                title: Text('Item 2'),
              )
            ],
          ),
        )
      : null,
    body: Row(
      children: [
        if (!is_mobile)
        Container(
          width: is_tablet ? 200 : 250,
          color: Colors.blue[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Text('Menu'),
              ),
              ListTile(
                title: Text('Item 1'),
              ),
              ListTile(
                title: Text('Item 2'),
              )
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  height: screen_height*0.5,
                  width: screen_width*0.5,
                ),
                Text('Screen Width: $screen_width', style: TextStyle(fontSize: screen_width*0.01),),
                Text('Screen Height: $screen_height', style: TextStyle(fontSize: screen_width*0.01),),
                if (is_mobile) Text('This is a mobile view', style: TextStyle(fontSize: screen_width*0.01),),
                if (is_tablet) Text('This is a tablet view', style: TextStyle(fontSize: screen_width*0.01),),
                if (is_desktop) Text('This is a desktop view', style: TextStyle(fontSize: screen_width*0.01),)
              ],
            ),
          ))
      ],
    ),
      );
  }
}
