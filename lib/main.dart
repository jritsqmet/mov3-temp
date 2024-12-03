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
          calcular_btn(context),
          Text("F a C")
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

Widget calcular_btn(context){
  return ElevatedButton.icon(onPressed: ()=> calcular(context), 
  label: Text("Calcular"), icon: Icon(Icons.calculate),);
}

void calcular(context){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text("Respuesta"),
      content: 
      Text("La temperatura de ${grados.text} ° en F es ${celciusF()}"),
    );
  }  );
}

double celciusF(){
  double c = double.parse( grados.text );
  return (c*1.8) + 32;
}