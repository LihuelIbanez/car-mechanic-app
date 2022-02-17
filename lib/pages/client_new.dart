import 'package:carsapp/src/utils/fonts.dart';
import 'package:carsapp/src/widgets/container.dart';
import 'package:flutter/material.dart';

class ClientNew extends StatelessWidget {
  const ClientNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=> Navigator.popAndPushNamed(context, 'clients')),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'New Client',
          style: styleTitulo1,
        ),
      ),
      body:SafeArea(
        child: CustumContainer(
          color: Colors.yellow,
          marginhorizontal: 20,
          marginvertical: 10,
          paddinghorizontal: 5,
          paddingvertical: 5,
          radius: 20,
          child:Column(

            children: <Widget>[
              const TextField(),
              const TextField(),
              const TextField(),
              const TextField(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      textAlign: TextAlign.center,
      obscureText: true,
      enableSuggestions: true,


    );
  }
}
