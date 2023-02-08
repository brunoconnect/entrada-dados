import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({super.key});

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valor = 0;
  String label = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Slider"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(children: [
          Slider(
              value: _valor,
              min: 0,
              max: 10,
              label: label,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.deepPurple,
              onChanged: (double novoValor) {
                setState(() {
                  _valor = novoValor;
                  label = novoValor.toString();
                });
                // print("Valor selecionado: " + novoValor.toString());
              }),
          ElevatedButton(
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print("Valor selecionado: " + _valor.toString());
              }),
        ]),
      ),
    );
  }
}
