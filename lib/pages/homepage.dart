import 'package:carsapp/src/utils/fonts.dart';
import 'package:flutter/material.dart';

import 'package:carsapp/src/widgets/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.yellow,
        title: Bounce(
          infinite: true,
          child: Text(
            'GO',
            style: styleTitulo1,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: const Icon(
          Icons.bluetooth_drive_sharp,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      drawer: const Drawers(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Menu(),
            const _Items(
              itemname: 'Services',
              icons: Icons.design_services,
              route: 'services',
              miliseconds: 400,
            ),
            const _Items(
              itemname: 'In-Progess',
              icons: Icons.work,
              route: '/',
              miliseconds: 600,
            ),
            const _Items(
              itemname: 'Payments',
              icons: Icons.credit_card,
              route: '/',
              miliseconds: 800,
            ),
          ],
        ),
      )),
    );
  }
}

class _Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      marginhorizontal: 10,
      marginvertical: 20,
      paddinghorizontal: 10,
      color: Colors.yellow,
      radius: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Flash(
                  infinite: true,
                  child: Text(
                    'Lest Check!',
                    style: styleTitulo1,
                  ),
                ),
              ),
              ElasticInLeft(
                delay: const Duration(seconds: 4),
                child: const Icon(
                  Icons.toys_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'clients list'),
            child: Column(
              children: [
                Text(
                  'Clients',
                  style: styleTitulo1,
                ),
                const Icon(
                  Icons.person,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Items extends StatelessWidget {
  final IconData icons;
  final int miliseconds;
  final String itemname;
  final String route;

  const _Items({
    required this.icons,
    required this.miliseconds,
    required this.itemname,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: CustumContainer(
        marginhorizontal: 10,
        marginvertical: 10,
        paddinghorizontal: 10,
        color: Colors.yellow,
        radius: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElasticInRight(
              delay: Duration(milliseconds: miliseconds),
              child: Text(
                itemname,
                style: styleTitulo1,
              ),
            ),
            const Expanded(child: SizedBox()),
            _ElasticIn(icons: icons, miliseconds: miliseconds),
          ],
        ),
      ),
    );
  }
}

class _ElasticIn extends StatelessWidget {
  final IconData icons;
  final int miliseconds;

  const _ElasticIn({required this.icons, required this.miliseconds});

  @override
  Widget build(BuildContext context) {
    return ElasticInLeft(
        delay: Duration(milliseconds: miliseconds), child: Icon(icons));
  }
}
