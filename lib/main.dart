import 'package:flutter/material.dart';

void main(){
  runApp( Ejercicio()  );
}

class Ejercicio extends StatelessWidget {
  const Ejercicio({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Ejercicio 1"),
          celcius_input(),
          calcular_btn()
        ],
      ),
    );
  }
}


TextEditingController grados = new TextEditingController();
Widget celcius_input(){
  return TextField(
    controller: grados,
  );
}

Widget calcular_btn(){
  return ElevatedButton.icon(onPressed: ()=>(), 
  label: Text("Calcular"), icon: Icon(Icons.calculate),);
}