import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({super.key});

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _escolhaConfig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada Switch"),
      ),
      body: Container(
        child: Column(children: [
          // O Switch não aparece no child Row somente se for column
          SwitchListTile(
              title: Text("Receber notificações?"),
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              }),

          SwitchListTile(
              title: Text("Carregar imagens automaticamente?"),
              value: _escolhaConfig,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaConfig = valor;
                });
              }),

          ElevatedButton(
              child: Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                if (_escolhaUsuario) {
                  print("escolha: Ativar notificações");
                } else {
                  print("escolha: Não ativar notificações");
                }

                if (_escolhaConfig) {
                  print("escolha: Carregar imagens automaticamente");
                } else {
                  print("escolha: Não carregar imagens automaticamente");
                }
                // print("Resultado: " +
                //     _escolhaUsuario.toString() +
                //     " Resultado Config: " +
                //     _escolhaConfig.toString());
              }),

          /*
          Switch(
              value: _escolhaUsuario,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaUsuario = valor;
                });
              }),

          Text("Receber notificações?")
              */
        ]),
      ),
    );
  }
}
