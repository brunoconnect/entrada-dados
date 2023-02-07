import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite um valor"),
              // enabled: true,
              // maxLength: 2,
              // maxLengthEnforcement: true,
              // style: TextStyle(
              //   fontSize: 25,
              //   color: Colors.green,
              // ),
              // obscureText: true,
              // onChanged: (String e) {
              //   print("Valor digitado" + texto);
              // },
              // onSubmitted: (String e) {
              //   print("Valor digitado" + texto);
              // },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Valor digitado: " + _textEditingController.text);
            },
            child: Text("Salvar"),
            style: ElevatedButton.styleFrom(primary: Colors.lightGreen),
          )
        ],
      ),
    );
  }
}
