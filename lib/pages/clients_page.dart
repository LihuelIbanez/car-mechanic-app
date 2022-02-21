import 'package:carsapp/src/utils/fonts.dart';
import 'package:carsapp/src/widgets/container.dart';
import 'package:flutter/material.dart';

class Clients extends StatelessWidget {
  const Clients({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _TitleName(firstname: 'Lihuel', lastname: 'Ibañez'),
            const _DataBody(
                id: 38756451,
                email: 'sherlock305@gmail.com',
                city: 'Mendoza, Mendoza',
                adress: 'Santa fe 878548',
                phone: 2994150686,
                ),
            _CarsList(),
          ],
        ),
      ),
    );
  }
}

class _TitleName extends StatelessWidget {
  final String firstname, lastname;

  const _TitleName({required this.firstname, required this.lastname});

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      marginhorizontal: 20,
      marginvertical: 10,
      paddinghorizontal: 10,
      paddingvertical: 10,
      radius: 20,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                firstname,
                style: styleTitulo2,
              ),
              Text(
                lastname,
                style: styleSubtile1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _DataBody extends StatelessWidget {
  final int id;
  final String email;
  final String adress;
  final String city;
  final int phone;

  const _DataBody(
      {required this.id,
      required this.email,
      required this.adress,
      required this.city,
      required this.phone,
      });

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      marginhorizontal: 20,
      marginvertical: 10,
      paddinghorizontal: 10,
      paddingvertical: 10,
      color: Colors.yellow,
      radius: 20,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Phone Number: $phone',
                style: styleSubtile2,
              ),
              const Expanded(child: SizedBox()),
              _Edit(),
            ],
          ),
          Row(
            children: [
              Text(
                'ID: $id',
                style: styleSubtile2,
              ),
              const Expanded(child: SizedBox()),
              Text(
                'EMAIL: $email',
                style: styleSubtile2,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'ADRESS: $adress',
                style: styleSubtile2,
              ),
              const Expanded(child: SizedBox()),
              Text(
                'City: $city',
                style: styleSubtile2,
              ),
            ],
          ),
              
        ],
      ),
    );
  }
}

class _CarsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      marginhorizontal: 20,
      paddingvertical: 10,
      color: Colors.black,
      radius: 20,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Cars List',
                  style: styleTitulo2,
                ),
                const Expanded(child: SizedBox()),
                TextButton(onPressed: () {}, child: Text('PLUS',style: styleSubtile1,)),
                TextButton(onPressed: () {}, child: Text('DELETE',style: styleSubtile1,)),
              ],
            ),
            const _CarsItem(
                model: 'Lancer', maker: 'Mitsubishi', patente: 'asdf 305'),
          ],
        ),
      ),
    );
  }
}

class _CarsItem extends StatelessWidget {
  final String model, maker, patente;

  const _CarsItem({required this.model, required this.maker, required this.patente});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.popAndPushNamed(context, 'cars')),
      child: CustumContainer(
        marginvertical: 10,
        paddinghorizontal: 20,
        paddingvertical: 10,
        color: Colors.yellow,
        radius: 20,
        child: Column(children: [
          Row(
            children: [
              Text(
                model,
                style: styleTitulo1,
              ),
              Text(
                maker,
                style: styleSubtile2,
              ),
              const Expanded(child: SizedBox()),
              Text(
                patente,
                style: styleTitulo1,
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class _Edit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.edit),
      splashColor: Colors.black,
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.yellow.shade700,
          content: Text('do you wanna edit Owners data or delete?',style: styleSubtile2),          
          title: Text('Edit',style:styleTitulo1),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: Text('EDIT',style: styleTitulo1,),
            ),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                barrierColor: Colors.black,                
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Colors.black,
                  title: Text('Delete User',style: styleTitulo2,),
                  actions: [
                    TextButton(
                      onPressed: (){},
                      child:Text('Delete',style: styleSubtile1,)),
                    TextButton(
                      onPressed: (){},
                      child:Text('Cancel',style: styleSubtile1,)),
                  ],
                ) 
                ),
              child: Text('Delete',style: styleTitulo1,),
            ),
          ],
        ),
      ),
    );
  }
}
