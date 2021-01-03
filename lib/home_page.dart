import 'package:financas/novo_planejamento_widget.dart';
import 'package:financas/status_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("R\$35,25"),
            ),
            elevation: 10,
            margin: EdgeInsets.all(10),
          ),
          StatusWidget()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return Center(
              child: NovoPlanejamentoWidget(ctx: context,),
            );
          },
        ),
        tooltip: 'Novo Planejamento',
        child: Icon(Icons.add),
      ),
    );
  }
}
