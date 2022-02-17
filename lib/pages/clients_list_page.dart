import 'package:carsapp/src/utils/fonts.dart';
import 'package:carsapp/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ClientsList extends StatelessWidget {
  const ClientsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Flash(
              infinite: true,
              child: Text(
                'Client List',
                style: styleTitulo2,
              )),
          backgroundColor: Colors.black,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.person_add,color: Colors.black,),
          onPressed: ()=> Navigator.pushNamed(context, 'clients new')),
        body: SafeArea(
          child: ListView(
            children: const <Widget>[
              _Owner(firstname: 'Lihuel', lastname: 'Ibañez', id: '38756451'),
              _Owner(firstname: 'Lihuel', lastname: 'Ibañez', id: '38756451'),
              _Owner(firstname: 'Lihuel', lastname: 'Ibañez', id: '38756451'),
            ],
          ),
        ));
  }
}

class _Owner extends StatelessWidget {
  final String firstname;
  final String lastname;
  final String id;

  const _Owner({
    Key? key,
    required this.firstname,
    required this.lastname,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      color: Colors.black,
      radius: 10,
      paddinghorizontal: 2,
      paddingvertical: 2,
      marginhorizontal: 10,
      marginvertical: 5,
      child: Row(
        children: [
          Text(lastname, style: styleTitulo2),
          Text(firstname, style: styleSubtile1),
          const Expanded(child: SizedBox()),
          Text(id, style: styleSubtile1),
        ],
      ),
    );
  }
}

