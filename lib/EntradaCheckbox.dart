import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({super.key});

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaBMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(children: [
          CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo."),
              // activeColor: Colors.red,
              // selected: true,
              // secondary: Icon(Icons.add_box),
              value: _comidaBrasileira,
              onChanged: (bool? resultado) {
                setState(() {
                  _comidaBrasileira = resultado!;
                });
              }),

          CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor comida do mundo."),
              // activeColor: Colors.red,
              // selected: true,
              // secondary: Icon(Icons.add_box),
              value: _comidaBMexicana,
              onChanged: (bool? resultado) {
                setState(() {
                  _comidaBMexicana = resultado!;
                });
              }),
          ElevatedButton(
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print("Comida Brasileira: " +
                    _comidaBrasileira.toString() +
                    " Comida Mexicana: " +
                    _comidaBMexicana.toString());
              }),

          // Text("Comida Brasileira"),
          // Checkbox(
          //     value: _estaSelecionado,
          //     onChanged: (bool? valor) {
          //       setState(() {
          //         _estaSelecionado = valor!;
          //       });
          //       print("Checkbox: " + valor.toString());
          //     })
        ]),
      ),
    );
  }
}
