import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        leading: const Icon(Icons.flight_land),
        title: Text(opt),
        subtitle: Text('ERCM quiero S'),
      );
      lista..add(tempWidget)..add(Divider());

      //lista.add(tempWidget);
      //lista.add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgest = opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.flight_land),
            title: Text(item + ' !'),
            subtitle: Text('ERCM quiero por favor'),
            trailing: Icon(Icons.arrow_right_alt_sharp),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
    return widgest;
  }
}
