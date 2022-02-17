import 'package:carsapp/src/utils/fonts.dart';
import 'package:carsapp/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);
  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          elevation: 2,
          splashColor: Colors.yellow,
          child: const Icon(Icons.send),
          onPressed: () => Navigator.popAndPushNamed(context, '/')),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.yellow,
        title: Flash(
          infinite: true,
          child: Text(
            'Services',
            style: styleTitulo1,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarsName(),
              CustumContainer(
                marginhorizontal: 20,
                paddinghorizontal: 15,
                paddingvertical: 20,
                color: Colors.yellow,
                radius: 20,
                child: Column(
                  children: const <Widget>[
                    _ItemBool(
                      name: 'Oil Change',
                    ),
                    _ItemBool(
                      name: 'Air Filter',
                    ),
                    _ItemBool(
                      name: 'Strap Change',
                    ),
                    _ItemBool(
                      name: 'General Review',
                    ),
                    _ItemBool(
                      name: 'Car Paint',
                    ),
                    CarColor(),
                    _ItemBool(name: 'Others'),
                    CustumContainer(
                      paddinghorizontal: 10,
                      paddingvertical: 10,
                      color: Colors.white,
                      radius: 20,
                      child: TextField(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ItemBool extends StatefulWidget {
  final String name;

  const _ItemBool({
    required this.name,
  });

  @override
  State<_ItemBool> createState() => _ItemBoolState();
}

class _ItemBoolState extends State<_ItemBool> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.name,
          style: styleTitulo1,
        ),
        const Expanded(child: SizedBox()),
        Switch(
          activeColor: Colors.black,
          activeTrackColor: Colors.black87,
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
        ),
      ],
    );
  }
}

class CarColor extends StatefulWidget {
  const CarColor({Key? key}) : super(key: key);

  @override
  State<CarColor> createState() => _CarColorState();
}

class _CarColorState extends State<CarColor> {
  String color = 'Selected a Color';

  void changecolor(String colorpicker) {
    setState(() {
      color = colorpicker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      marginvertical: 5,
      paddingvertical: 5,
      color: Colors.white,
      radius: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _Colorbox(
                    colors: Colors.black,
                    colorChoise: () => changecolor('black')),
                _Colorbox(
                    colors: Colors.yellow,
                    colorChoise: () => changecolor('yellow')),
                _Colorbox(
                    colors: Colors.white,
                    colorChoise: () => changecolor('white')),
                _Colorbox(
                    colors: Colors.green,
                    colorChoise: () => changecolor('green')),
                _Colorbox(
                    colors: Colors.grey,
                    colorChoise: () => changecolor('grey')),
                _Colorbox(
                    colors: Colors.red, colorChoise: () => changecolor('red')),
                _Colorbox(
                    colors: Colors.redAccent,
                    colorChoise: () => changecolor('pink')),
                _Colorbox(
                    colors: Colors.purple,
                    colorChoise: () => changecolor('purple')),
                _Colorbox(
                    colors: Colors.blue,
                    colorChoise: () => changecolor('blue')),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                color,
                style: styleSubtile2,
              ))
        ],
      ),
    );
  }
}

class _Colorbox extends StatelessWidget {
  final Color? colors;
  final VoidCallback? colorChoise;

  const _Colorbox({this.colors, this.colorChoise});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: colors,
            fixedSize: const Size.fromWidth(0.5),
            shadowColor: Colors.amber),
        onPressed: colorChoise,
        child: const Icon(
          Icons.toys,
          color: Colors.black54,
        ));
  }
}

class CarsName extends StatelessWidget {
  const CarsName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustumContainer(
      marginhorizontal: 20,
      marginvertical: 20,
      paddinghorizontal: 20,
      color: Colors.black,
      radius: 20,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Lancer EVO X',
                style: styleTitulo2,
              ),
              Text(
                'Mitsubishi',
                style: styleSubtile1,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Patente : ASD 305',
                style: styleSubtile1,
              ),
              const Expanded(child: SizedBox()),
              Text(
                'Dueño: Lihuel Ibañez',
                style: styleSubtile1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
