import 'package:flutter/material.dart';

class DetalhesStatusPage extends StatelessWidget {
  final parcelas;
  final pagos;

  const DetalhesStatusPage({Key key, this.parcelas = 0, this.pagos = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            title: Text('Tempo 12 meses'),
          ),
          ListTile(
            title: Text('Valor R\$ 100,00'),
          ),
          ListTile(
            subtitle: Wrap(
              children: List.generate(
                  parcelas,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: index >= pagos
                              ? Colors.lightBlueAccent
                              : Colors.grey.shade300,
                          child: Text('${index + 1}'),
                        ),
                      )),
            ),
            title: Text('Parcelas ^'),
          )
        ],
      ),
    );
  }
}
