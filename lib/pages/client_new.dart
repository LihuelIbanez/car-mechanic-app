import 'package:carsapp/src/utils/fonts.dart';
import 'package:carsapp/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ClientNew extends StatelessWidget {
  const ClientNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.check, color: Colors.white),
          
          onPressed: () => Navigator.popAndPushNamed(context, 'clients')),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'New Client',
          style: styleTitulo2,
        ),
      ),
      body: SafeArea(
        child: CustumContainer(
          color: Colors.yellow,
          marginhorizontal: 20,
          marginvertical: 10,
          paddinghorizontal: 5,
          paddingvertical: 5,
          radius: 20,
          child: ListView(
            children: const <Widget>[ 
              _CustomTextField(itemname: 'Name', duration: 200,),
              _CustomTextField(itemname: 'Last Name', duration: 400,),
              _CustomTextField(itemname: 'ID', duration: 600,),
              _CustomTextField(itemname: 'E-mail', duration: 800,),
              _CustomTextField(itemname: 'Adress', duration: 1000,),
              _CustomTextField(itemname: 'State', duration: 1200,),
              _CustomTextField(itemname: 'City', duration: 1400,),
              _CustomTextField(itemname: 'Phone Number', duration: 1600,),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  final String itemname;
  final int duration;

  const _CustomTextField({
  Key? key,
  required this.itemname,
  required this.duration,  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: BounceInRight(
                delay: Duration(milliseconds: duration),
          child: Text(itemname,style: styleSubtile2,))
      ),
    );
  }
}
