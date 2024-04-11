import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mostrar Imagenes"),
          backgroundColor: Color(0xffff75a4),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 250.0,
                width: 450.0,
                child: Image.asset(
                  'assets/img1.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(
                height: 250.0,
                width: 450.0,
                child: Image.network(
                  'https://belleza.ideal.es/wp-content/uploads/2020/05/productos-belleza.jpeg',
                  fit: BoxFit.fitWidth,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
