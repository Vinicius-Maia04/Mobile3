import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Tela_Login(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tela_Login extends StatelessWidget {
  const Tela_Login({super.key});

  @override
  Widget build(BuildContext context) {
    final media_query = MediaQuery.of(context).size;
    final screen_width = media_query.width;
    final screen_height = media_query.height;

    final is_mobile = screen_width < 600;
    final is_tablet = screen_width >= 600 && screen_width < 1024;
    final is_desktop = screen_width >= 1024;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Tela de Login', style: TextStyle(
          color: Colors.amber,
          fontSize: screen_height*0.02,
          fontWeight: FontWeight.bold
        ),),),
        backgroundColor: const Color.fromARGB(255, 21, 87, 141),
      ),
      resizeToAvoidBottomInset: true,
      body: Row(
      children: [
        Expanded(
          child: Center(
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 25, 83, 131), Color.fromARGB(255, 47, 112, 173)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                    )
                  ),
                  width: screen_width,
                  height: screen_height,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
