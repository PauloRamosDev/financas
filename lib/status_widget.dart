import 'package:financas/detalhes_status_page.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('STATUS'),
          ),
          ListTile(
              title: Text('10%'),
              trailing: Text('Detalhes'),
              leading: Text('1'),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => DetalhesStatusPage(parcelas: 12,pagos: 3,)))),
          ListTile(
            title: Text('30%'),
            trailing: Text('Detalhes'),
            leading: Text('2'),
          ),
          ListTile(
            title: Text('PROGRESSO 20%'),
          )
        ],
      ),
    );
  }
}
