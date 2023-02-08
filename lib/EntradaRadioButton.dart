import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({super.key});

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Radio Button"),
      ),
      body: Container(
        child: Column(children: [
          RadioListTile(
              title: Text("Masculino"),
              value: "M",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: " + escolha!);
              }),
          RadioListTile(
              title: Text("Feminino"),
              value: "F",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: " + escolha!);
              }),
          RadioListTile(
              title: Text("Teste"),
              value: "T",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: " + escolha!);
              }),
          ElevatedButton(
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                print("Resultado: " + _escolhaUsuario!);
              })

          /*  Text("Masculino"),
          Radio(
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: " + escolha!);
              }),
          Text("Feminino"),
          Radio(
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha) {
                setState(() {
                  _escolhaUsuario = escolha;
                });
                print("Resultado: " + escolha!);
              }),
              */
        ]),
      ),
    );
  }
}
