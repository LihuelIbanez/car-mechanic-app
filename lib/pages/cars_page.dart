import 'package:carsapp/src/utils/fonts.dart';
import 'package:carsapp/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Cars extends StatelessWidget {
  const Cars({Key? key}) : super(key: key);

  final String firstname = 'Lihuel';
  final String lastname = 'Ibañez';
  final String model = 'Lancer EVO X ';
  final String mark = 'MITSUBISHI';
  final String patent = 'ASD 305';
  // final String car_color = 'Black';
  final int year = 2022;

  /*
  Cars({    
    required this.firstname,
    required this.lastname,
    required this.mark,
    required this.model,
    required this.patent,
  });
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Car History',
          style: styleTitulo2,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 40),
        backgroundColor: Colors.black,
        focusColor: Colors.yellow,
        onPressed: () => Navigator.pushNamed(context, 'services'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Head(
              model: model,
              mark: mark,
              owner: '$firstname $lastname',
              patent: patent,
              year: year,
            ),
            const _BodyHistory(),
          ],
        ),
      ),
    );
  }
}

class _Head extends StatelessWidget {
  final String model;
  final String mark;
  final String owner;
  final String patent;
  final int year;

  const _Head({
    required this.model,
    required this.mark,
    required this.owner,
    required this.patent,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      color: Colors.black,
      radius: 20,
      marginvertical: 10,
      paddinghorizontal: 20,
      paddingvertical: 10,
      marginhorizontal: 10,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                model,
                style: styleTitulo2,
              ),
              Text(
                mark,
                style: styleSubtile1,
              ),
              const Expanded(child: SizedBox()),
              Text(
                '$year',
                style: styleSubtile1,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                patent,
                style: styleSubtile1,
              ),
              const Expanded(child: SizedBox()),
              Text(
                owner,
                style: styleSubtile1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BodyHistory extends StatelessWidget {
  const _BodyHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
        color: Colors.black,
        marginhorizontal: 20,
        marginvertical: 20,
        paddinghorizontal: 10,
        paddingvertical: 10,
        radius: 20,
        child: Column(
          children: [
            Text(
              'History',
              style: styleTitulo2,
            ),
            const _LatesServices(day: 8, month: 11, year: 1994),
          ],
        ));
  }
}

class _LatesServices extends StatelessWidget {
  final int day;
  final int month;
  final int year;

  const _LatesServices({
    Key? key,
    required this.day,
    required this.month,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
        marginvertical: 5,
        paddinghorizontal: 5,
        paddingvertical: 5,
        radius: 10,
        color: Colors.white,
        child: Column(
          children: [
            Text(
              'Date:$day/$month/$year',
              style: styleSubtile2,
            ),
            Row(
              children: const <Widget>[
                _Item(item: 'Oil Change'),
                Expanded(child: SizedBox()),
                _Item(item: 'Air Filter'),
                Expanded(child: SizedBox()),
                _Item(item: 'Strap Change'),
              ],
            ),
            Row(
              children: const <Widget>[
                _Item(item: 'General Review', color: Colors.yellow),
                Expanded(child: SizedBox()),
                _Item(item: 'Car Paint'),
                Expanded(child: SizedBox()),
                _Item(item: 'Others'),
              ],
            ),
          ],
        ));
  }
}

class _Item extends StatelessWidget {
  final Color? color;
  final String item;

  const _Item({
    Key? key,
    this.color,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      color: color ?? Colors.white,
      marginhorizontal: 1,
      marginvertical: 1,
      paddinghorizontal: 1,
      paddingvertical: 1,
      child: Text(
        item,
        style: styleSubtile2,
      ),
    );
  }
}
