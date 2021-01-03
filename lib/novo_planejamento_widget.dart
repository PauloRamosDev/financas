import 'package:flutter/material.dart';

class NovoPlanejamentoWidget extends StatelessWidget {

  final ctx;

  const NovoPlanejamentoWidget({Key key, this.ctx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: [
          ListTile(title: Text('Duração'),),
          ListTile(title: Text('Anos'),),
          ListTile(title: Text('Meses'),),
          ListTile(title: Text('Dia Aniversario'),),
          RaisedButton(
            child: const Text('Adicionar'),
            onPressed: () => Navigator.pop(ctx),
          )
        ],
      ),
    );
  }
}
